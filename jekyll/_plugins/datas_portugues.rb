# Baseado em: https://stackoverflow.com/a/32331857/1657502
module Jekyll
    module DatasEmPortugues
        MONTHS = {
            "01" => "janeiro",
            "02" => "fevereiro",
            "03" => "março",
            "04" => "abril",
            "05" => "maio",
            "06" => "junho",
            "07" => "julho",
            "08" => "agosto",
            "09" => "setembro",
            "10" => "outubro",
            "11" => "novembro",
            "12" => "dezembro"
        }

        # http://man7.org/linux/man-pages/man3/strftime.3.html
        def dataEmPortugues(date)
            day = time(date).strftime("%d")
            month = time(date).strftime("%m")
            year = time(date).strftime("%Y")
            day+' de '+MONTHS[month]+' de '+year
        end

        def html5date(date)
            day = time(date).strftime("%d")
            month = time(date).strftime("%m")
            year = time(date).strftime("%Y")
            year+'-'+month+'-'+day
        end
    end
end

Liquid::Template.register_filter(Jekyll::DatasEmPortugues)
