require 'combine_pdf'
def main()
    input = ARGV
    p ARGV
    pdf = CombinePDF.new
    ARGV.each do |file|
        pdf << CombinePDF.load(file)
    end
    pdf.save "assets/pdf/out.pdf"
end 

main()