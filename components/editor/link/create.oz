functor
import
   Comp at '../../../lib/component.ozf'
export
   new: CompNewGen
define
   fun {CompNewGen Name}
      {Comp.new comp(
		   name:Name type:'components/editor/link/create'
		   inPorts(
		      input(proc{$ In Out Comp} Rec in
			       Rec = {In.get}
			       {Out.line start(Rec.x Rec.y Rec.x Rec.y)}
			    end)
		      )
		   outPorts(line)
		   )
      }
   end
end