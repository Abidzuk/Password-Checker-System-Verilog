# Password-Checker-System-Verilog
Acest proiect implementează un circuit hardware care procesează litere primite în cod ASCII și realizează două funcții principale:

1. **Separă vocalele de consoane** și le salvează în două memorii RAM distincte.  
2. **Verifică introducerea unei parole** (o secvență de litere succesive) și activează semnalul `check` dacă parola este detectată.

---

## Structura circuitului

Circuitul este compus din următoarele module:

- **counter_6b**: numărătoare pe 6 biți, generează adresele pentru RAM.  
- **reg_6b**: registru pe 6 biți, întârzie schimbarea adresei cu un ciclu de clock.  
- **demux**: demultiplexor, direcționează litera către memoria corespunzătoare (vocale sau consoane).  
- **ram_consonants**: memorie RAM cu 64 de locații a câte 8 biți fiecare, folosită pentru consoane. Citirea este asincronă.  
- **ram_vowels**: memorie RAM cu 64 de locații a câte 8 biți fiecare, folosită pentru vocale. Citirea este asincronă.  
- **vowel_checker_struct**: circuit combinațional care verifică dacă litera introdusă este o vocală.  
- **pass_check_fsm**: automat finit care verifică parola introdusă. Activează semnalul `pass_ok` pentru un singur ciclu de clock dacă parola este corectă.

---

## Cerințe speciale

- Literele sunt procesate doar dacă semnalul **`en`** este activ.  
- **Parola** este formată din primele 5 litere din prenumele și numele vostru concatenate.  
  - Exemplu:  
    - Pentru *Ion Vasilescu*: parola = `ionva`  
    - Pentru *Madalin Vasilescu*: parola = `madal`  
- **Dimensiuni pentru fire**: trebuie specificate acolo unde lipsesc (de exemplu, semnale pe 6 biți, 8 biți etc.).  
- Semnalele de **clock** și **reset** trebuie adăugate, chiar dacă nu apar în desen.  
- Descrierea este realizată **structural**, pentru a evidenția modulele hardware folosite.  

---

## Intrări și ieșiri

### Intrări:
- clk – semnal de clock.  
- rst – reset asincron.  
- en – enable pentru validarea literei.  
- data_in[7:0] – litera în cod ASCII (8 biți).  

### Ieșiri:
- pass_ok – activ pentru un singur ciclu de clock dacă parola este introdusă corect.  
- check – semnal activ când parola a fost detectată.  

---

## Resurse utilizate
- **2 memorii RAM** (64x8 biți).  
- **1 numărător pe 6 biți**.  
- **1 registru pe 6 biți**.  
- **1 demultiplexor**.  
- **1 circuit combinațional pentru verificarea vocalelor**.  
- **1 automat finit pentru verificarea parolei**.  
