functor
import
   Comp at '../../../lib/component.ozf'
   Compiler
export
   new: CompNewGen
define
   fun {CompNewGen Name}
      {Comp.new comp(
		   name:Name type:'components/editor/linkEdit/display'
		   inPorts(input)
		   outPorts(disp output options)
		   state(comp:nil)
		   procedure(proc{$ Ins Out Comp} {InputProc Ins.input Out Comp} end)
		   )
      }
   end
   proc{InputProc In Out Comp} IP in
      IP = {In.get}
      case {Label IP}
      of displayComp then Ack S in
	 {Out.disp display}
	 if Comp.state.comp \= nil then A in
	    {Comp.state.comp send('in' closePorts A)}
	    {Wait A}
	 end
	 Comp.state.comp := IP.1
	 {IP.1 send('in' openPorts Ack)}
	 S = {(IP.2) getState($)}
	 {Out.options state(S)}
	 {Wait Ack}
      [] start then Ack in
	 {Comp.state.comp send('in' start Ack)}
	 {Wait Ack}
      [] stop then Ack in
	 {Comp.state.comp send('in' stop Ack)}
	 {Wait Ack}
      [] newComp then Ack S in
	 {Comp.state.comp send('in' IP Ack)}
	 {Wait Ack}
	 S = {(IP.1) getState($)}
	 {Out.options state(S)}
      [] displayGraph then
	 if Comp.state.comp \= nil then Ack in 
	    {Comp.state.comp send('in' closePorts Ack)}
	    {Wait Ack}
	 end
	 Comp.state.comp := nil
      [] delete then Ack in
	 {Comp.state.comp send('in' delete Ack)}
	 {Wait Ack}
	 Comp.state.comp := nil
	 {Out.output displayGraph}
      [] change then L V Ack S in
	 L = {VirtualString.toAtom IP.label}
	 V = {Compiler.virtualStringToValue IP.value}
	 {Comp.state.comp send('in' options(L:V) Ack)}
	 {Wait Ack}
	 S = {Comp.state.comp getState($)}
	 {Wait S}
      end
   end
end