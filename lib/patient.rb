class Patient
    #initializes with name and added to array of all patient instances
    @@all = []

    def self.all 
        @@all 
    end 

    def initialize(name)
        @name = name 
        Patient.all << self 
    end

    attr_reader :name 
    #creates new appointment associated with patient given a doctor and date
    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end 
    #displays all appointments associated with patient
    def appointments 
        Appointment.all.select do |appt_instance|
        appt_instance.patient == self 
        end
    end
    #displays all doctors associated with patient's appointments
    def doctors 
        self.appointments.map do |patients_appts|
            patients_appts.doctor 
        end
    end
end #of Patient class
