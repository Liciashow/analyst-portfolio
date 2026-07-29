# Clinic Database Design 🏥

A relational database design for a **small medical clinic** — modeling patients, doctors, and their appointments. This project shows database design skills: primary and foreign keys, one-to-many and many-to-many relationships, a junction table, and a normalized (3NF) structure.

## 📋 The scenario

A small clinic needs to track its patients, its doctors, and every appointment between them. One patient can have many appointments, one doctor can have many appointments, and over time a patient may see many doctors (and each doctor sees many patients) — a many-to-many relationship, resolved by the Appointments table.

## 🗂️ The tables

**Patients** — one row per patient
- `PatientID` (Primary Key), FirstName, LastName, Address, PhoneNo, Gender, DateOfBirth, Email

**Doctors** — one row per doctor
- `DoctorID` (Primary Key), FirstName, LastName, Specialty, PhoneNo, Email, Availability, Status

**Appointments** — one row per visit (also the junction/bridge table)
- `AppointmentID` (Primary Key)
- `PatientID` (Foreign Key → Patients)
- `DoctorID` (Foreign Key → Doctors)
- AppointmentDate, AppointmentTime, ReasonForVisit, Diagnosis, Treatment, Prescription, AppointmentStatus, RoomNumber, FollowUpDate, Notes

## 🔗 The relationships

| Relationship | Type | How |
|--------------|------|-----|
| Patients → Appointments | One-to-many | One patient has many appointments |
| Doctors → Appointments | One-to-many | One doctor has many appointments |
| Patients ↔ Doctors | Many-to-many | Resolved by the **Appointments** junction table (two foreign keys) |

## 🧺 How it's normalized (3NF)

Each patient's details are stored **once** in the Patients table (not repeated on every appointment), and each doctor's details **once** in Doctors. The Appointments table only stores the visit facts plus the two foreign keys that link to the right patient and doctor. This removes redundancy — if a patient's phone number changes, it's updated in exactly one place.

## 🖼️ ER Diagram

![Clinic ER Diagram](clinic_er_diagram.png)

## 🧰 Built with

- **dbdiagram.io** — for the ER diagram
- **Database design principles** — keys, relationships, normalization

---

**Author:** Felicia Soyinka · [LinkedIn](https://www.linkedin.com/in/felicia-soyinka)
