require 'bundler'
Bundler.require

def main()
    input = ARGV
    p ARGV
    pdf = CombinePDF.new
    ARGV.each do |file|
        pdf << CombinePDF.load(file)
    end
    pdf.save "out.pdf"
end 

main()