class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def appointments
        Appointment.all.select do |appointment_instance|
            appointment_instance.doctor == self
        end
    end

    def patients
        self.appointments.map do |appointment_instance|
            appointment_instance.patient
        end
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def self.all
        @@all
    end

end