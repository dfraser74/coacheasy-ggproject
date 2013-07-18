class ProgramPdf < Prawn::Document

  def initialize(program, view)
    super()
    
    text "Report for #{program.title}, commencing the week of #{program.cweekstart}"
   
            
    
  end
end