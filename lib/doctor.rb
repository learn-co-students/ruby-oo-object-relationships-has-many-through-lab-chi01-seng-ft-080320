
require 'pry'

class Doctor

    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        self.class.all << self 
    end 

    # def initialize(date, patient, doctor)

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end


    def appointments
        Appointment.all.select do |individual_appointment|
            individual_appointment.doctor == self
        end
    end

    def patients
        my_patients = []
        Appointment.all.each do |individual_appointment|
            if (individual_appointment.doctor == self)
                my_patients << individual_appointment.patient
            end
        end
        my_patients
    end

    def self.all
        @@all 
    end




end