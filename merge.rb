module Pdf
    def self.create(params)
      savepath = "public/pdf/out.pdf"
        pdf = CombinePDF.new
        params[:pdffiles].each do |file|
            readfile = IO.read file[:tempfile]
            pdf << CombinePDF.parse(readfile)
        end
        temp_file = Tempfile.new(["out", '.pdf'], :encoding => 'ascii-8bit')
        pdf.save(temp_file)
        return temp_file
    end
end
