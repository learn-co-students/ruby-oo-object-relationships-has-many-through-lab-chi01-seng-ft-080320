
class Patient 

    attr_accessor :name

    @@all = []


    def initialize (name)
        @name = name

        self.class.all << self
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |individual_appointment|
            individual_appointment.patient == self
        end
    end


    def doctors 
        my_doctors = []
        Appointment.all.each do |individual_appointment|
            if(individual_appointment.patient == self)
                my_doctors << individual_appointment.doctor
            end
        end
        my_doctors
    end


    def self.all
        @@all
    end
end