# Άσκηση 5

### ΕΚΤΕΛΕΣΗ ΤΗΣ ΑΣΚΗΣΗΣ

### 1. Διάβασμα προτύπων από ιατρικών εργαστηριακές εξετάσεις για την διάγνωση ζακχαρώδη διαβήτη σε γυναίκες
Στο αρχείο "\\ee-ntserver\PatRec\pima-indians-diabetes.data" υπάρχουν σε φόρμα "ASCII" δεδομένα που προέρχονται από εξετάσεις αίματος γυναικών που έχουν εξετασθεί για πιθανή ασθένεια ζαχαρώδη διαβήτη. Οι μετρήσεις αυτές έχουν πραγματοποιηθεί σε 768 γυναίκες Ινδιάνους στις ΗΠΑ. Σε κάθε γραμμή του αρχείου υπάρχουν πληροφορίες που συσχετίζονται με κάθε εξεταζόμενη γυναίκα και περιέχει πληροφορίες που συσχετίζονται με τα συμπτώματα που ανιχνεύονται με φυσικές και εργαστηριακές εξετάσεις.

Οι τρείς πρώτες γραμμές του αρχείου είναι οι ακόλουθες:

`
6 148 72 35 0 33.6 0.627 50 1
`

`
1 85 66 29 0 26.6 0.351 31 0
`

`
8 183 64 0 0 23.3 0.672 32 1
`

Οι αριθμοί κάθε γραμμής παριστούν τα ακόλουθα στοιχεία:
| Πεδίο         | Περιεχόμενο του πεδίου     |
| ------------- | ------------- |
| 1             | Αριθμός κυήσεων | 
| 2             | Δοκιμασία φόρτισης του πλάσματος στο αίμα με γλυκόζη|
| 3             | Διαστολική πίεση του αίματος| 
| 4             | Πάχος πτυχών του δέρματος στην περιοχή του τρικεφάλου| 
| 5             | Συγκέντρωςη ινσουλίνης στο αίμα | 
| 6             | Μάζα σώματος| 
| 7             | Συνάρτηση κληρονομικότητας| 
| 8             | Ηλικία| 
| 9             | Ταξινόμηση: 0 Υγιής, 1 διαβητικός| 


Τοποθετείστε τα παραδείγματα του αρχείου που αντιστοιχούν σε υγιείς στον πίνακα X και τα παραδείγματα που αντιστοιχούν σε ασθενείς στον πίνακα C.


### 2. Υπολογίστε τους συντελεστές των γραμμικών συναρτήσεων απόφασης με τον αλγόριθμο Ho-Kashyap.
Για να κατασκευάσετε ένα αυτόματο διαγνωστικό σύστημα για αυτόματη διάγνωση πάθησης διαβήτη χρησιμοποιώντας γραμμικές συναρτήσεις απόφασης πρέπει αρχικά να υπολογίσετε τους συντελεστές των γραμμικών συναρτήσεων. Επιλέξτε έναν συντελεστή εκπαίδευσης και υπολογίστε το διάνυσμα των συντελεστών της γραμμικής συνάρτησης απόφασης με την βοήθεια του αλγόριθμου Ho-Kashap.

### 3. Υπολογίστε το σφάλμα του συστήματος ταξινόμησης
Χρησιμοποιώντας όλα τα παραδείγματα εκπαίδευσης υπολογίστε το ελάχιστο σφάλμα του συστήματος ταξινόμησης.

### 4. Μελετήστε την επίδραση που έχει ο συντελεστής εκπαίδευσης στον αλγόριθμο Ho-kashyap
Κατασκευάστε την γραφική παράσταση που δίνει την αξιοπιστία του γραμμικού συστήματος ταξινόμησης για διαφορετικές τιμές του συντελεστή εκπαίδευσης. Κατασκευάστε επίσης και τον αριθμό των επαναλήψεων του αλγόριθμου σαν συνάρτηση του συντελεστή εκπαίδευσης.

### 5. Τι παρατηρείτε από τα αποτελέσματα των μετρήσεων
Περιγράψτε και αιτιολογείστε τα αποτελέσματα που πήρατε από τις μετρήσεις του ελάχιστου σφάλματος.



