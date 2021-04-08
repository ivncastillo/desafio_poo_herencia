class Appointment
    attr_reader :location, :purpose, :hour, :min

    def initialize(location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end

end


class MonthlyAppointment < Appointment
    attr_reader :location, :purpose, :hour, :min , :day
    def initialize(location, purpose, hour, min, day)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
        @day = day
    end
   
    def ocurrs_on?(day2)
        puts self.day==day2
    end 
    def to_s()
        puts "Reunión mensual en #{self.location} sobre #{self.purpose} el día #{self.day} a la(s) #{self.hour}:#{self.min}."
    end 
end

class DailyAppointment < Appointment
    attr_reader :location, :purpose, :hour, :min
    def initialize(location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end
   
    def ocurrs_on?(hour2, min2)
        puts self.hour==hour2 && self.min==min2
    end 
    def to_s()
        puts "Reunión diaria en #{self.location} sobre #{self.purpose} a la(s) #{self.hour}:#{self.min}."
    end 
end

class OneTimeAppointment < Appointment
    attr_reader :location, :purpose, :hour, :min , :day, :month, :year
    def initialize(location, purpose, hour, min, day, month, year)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
        @day = day
        @month = month
        @year = year
    end
   
    def ocurrs_on?(day2, month2, year2)
        puts self.day==day2 && self.month==month2 && self.year==year2
    end 
    def to_s()
        puts "Reunión única en #{self.location} sobre #{self.purpose} el #{self.day}/#{self.month}/#{self.year} a la(s) #{self.hour}:#{self.min}."
    end 

end

#verificamos el codigo generando instancias y probando métodos
cita=Appointment.new('DesafioLatam','Trabajo', 14, 30)

cita_mensual=MonthlyAppointment.new(cita.location, cita.purpose, cita.hour, cita.min, 25)
cita_mensual.ocurrs_on?(25)
cita_mensual.to_s

cita_diaria=DailyAppointment.new('Desafío Latam', 'Educación', 8, 15)
cita_diaria.ocurrs_on?(8,15)
cita_diaria.to_s

cita_unica=OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019)
cita_unica.ocurrs_on?(4,6,2019)
cita_unica.to_s