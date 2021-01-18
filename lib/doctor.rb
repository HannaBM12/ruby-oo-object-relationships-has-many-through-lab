
class Doctor
    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appointment_inst|
            appointment_inst.doctor == self}
    end

    def new_appointment (patient, date)
        Appointment.new(patient, date, self)
    end

    def patients
        appointments.collect{|appointment_inst|
            appointment_inst.patient}
    end
end