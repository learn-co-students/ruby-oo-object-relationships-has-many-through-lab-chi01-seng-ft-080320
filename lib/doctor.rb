class Doctor 
    #initializes with name and adds to collection of all Doctor instances
    @@all = []

    def self.all 
        @@all 
    end 

    def initialize(name)
        @name = name 
        Doctor.all << self 
    end

    attr_reader :name
    #creates new appointment associated with doctor instance given a patient and date
    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end 
    #displays all appointments associated with doctor instance
    def appointments
        Appointment.all.select do |appointment_instance|
            appointment_instance.doctor == self 
        end
    end
    #displays all patients associated with doctor instance appointments
    def patients
        self.appointments.map do |doctors_appts|
            doctors_appts.patient
        end
    end
end #of Doctor class