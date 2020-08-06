class Appointment
#initializes with date, patient, and doctor and adds to collection of appoinments accessible to all classes
    @@all = []

    def self.all 
        @@all 
    end 

    def initialize(date, patient, doctor)
        @date = date 
        @patient = patient 
        @doctor = doctor 
        Appointment.all << self 
    end 

    attr_reader :date, :patient, :doctor
end #of Appointment class