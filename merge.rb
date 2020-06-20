module Pdf
    def self.create(params)
      savepath = "public/pdf/out.pdf"
        pdf = CombinePDF.new
        params[:pdffiles].each do |file|
            readfile = IO.read file[:tempfile]
            pdf << CombinePDF.parse(readfile)
        end
        pdf.save "#{savepath}"
    end
end
