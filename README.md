# NBA Statistics Analysis
![NBA](https://cdn.phenompeople.com/CareerConnectResources/NBANBAUS/social/1200x630-1670500675022.jpg)
## Overview
This project is a deep dive into the history and performance of NBA teams, utilizing structured data analysis to uncover insights and trends. By leveraging SQL and a rich dataset from the [NBA Database on Kaggle](https://www.kaggle.com/datasets/wyattowalsh/basketball), I am aiming to answer fundamental questions about team performance across different eras of basketball. Through structured queries, I have analyzed win-loss records, identify periods of dominance, and highlight exceptional achievements and turnarounds in NBA history.

The NBA is a league defined by its dynasties, legendary players, and moments of triumph and despair. Teams’ records are not just numbers—they tell stories of perseverance, strategy, roster construction, and sometimes, sheer luck. This project captures some of those narratives by extracting actionable insights from decades of game data.

### Objectives
1. **Identify Historical Achievements**: Recognize the best single-season performances and sustained excellence over multi-year periods.
2. **Explore Trends**: Understand how team success has been built and rebuilt over time, highlighting standout seasons and historical trends.
3. **Deliver Actionable Insights**: Provide meaningful results that fans, analysts, or anyone interested in basketball history can interpret and use for storytelling or further research.
---

### Questions and Answers

#### **Question 1: How many games has each team won and lost in their entire history?**

**Result Summary**:
- The **Boston Celtics** have the most wins in NBA history, with **3,625 wins and 2,581 losses**, while maintaining a legacy as one of the league's most successful franchises.

| Team | Total Win-Loss |
|--------------|----------------|
| <img src="https://a.espncdn.com/guid/2ca761df-5f60-b2e9-22ed-e099c46d889b/logos/primary_logo_on_black_color.png" alt="Celtics" width="400"> | <img src="https://github.com/user-attachments/assets/85ce5027-165d-46ea-b097-443f26240da1" alt="Total Win-Loss" width="400"> |


**Context and Analysis**:
- The Celtics' historical dominance is due to their success in the mid-20th century, particularly during the Bill Russell era (1956–1969), when they won 11 championships in 13 seasons.
- As one of the league's original teams, they benefited from stability, excellent coaching (Red Auerbach), and a roster filled with Hall of Fame players like Bill Russell, Larry Bird, and Paul Pierce over decades.
- **Why is this significant?**
  - Teams with long-standing histories like the Celtics and the Los Angeles Lakers have accumulated significant win totals due to their sustained excellence and ability to adapt across different eras of basketball.
  - Teams lower on the list, such as expansion teams like the Charlotte Hornets or Memphis Grizzlies, reflect the challenge of building competitive franchises from scratch.

---

#### **Question 2: What is the best win-loss record by a team in a single season?**

**Result Summary**:
- The **Golden State Warriors** had the best single-season record in **2015**, finishing with **73 wins and 9 losses**, a remarkable win percentage of **0.89**.

| History made! | Best Records |
|---------------|-------------|
| <img src="https://www.nydailynews.com/wp-content/uploads/migration/2016/04/14/4P6DIWI2VOMZORDSVU2SMK527I.jpg" alt="Warriors" width="400"> | <img src="https://github.com/user-attachments/assets/d02d3996-fca9-4690-8ac5-26cb461a7aca" alt="Best Record" width="700"> |


**Context and Analysis**:
- The 2015 season was historic for the Warriors, led by MVP Stephen Curry and a supporting cast featuring Klay Thompson and Draymond Green. This team excelled in ball movement, perimeter shooting, and defense under coach Steve Kerr, revolutionizing the game with their "small-ball" lineup.
- Their success marked the culmination of a carefully built roster and strategic innovations in how basketball was played. The team's ability to score from beyond the arc consistently overwhelmed opponents.
- **Why is this significant?**
  - The Warriors broke the previous single-season record of 72 wins set by the Chicago Bulls in 1995-1996. Their record-setting performance underlines how a combination of talent, coaching, and modern basketball strategies can achieve unparalleled success.
  - However, their season was bittersweet as they failed to win the NBA championship that year, losing to the Cleveland Cavaliers in the NBA Finals.

---

#### **Question 3: Which team has the best win-loss record over a 5-year period?**

**Result Summary**:
- The **Golden State Warriors** achieved the best rolling 5-year win-loss record from **2014 to 2018**, with a win percentage of **0.785**.

| Dynasty | 5-Year Performance |
|------------------------------|---------------------|
| <img src="https://www.si.com/.image/t_share/MTY4MTA1MjMyMjk4NDg1MDA5/warriors-celebrationjpg.jpg" alt="Warriors Dynasty" width="600"> | <img src="https://github.com/user-attachments/assets/0b2df626-09d4-4079-809f-629b43e21614" alt="5 Year" width="600"> |


**Context and Analysis**:
- This period coincided with the Warriors' dynasty, fueled by the arrival of Kevin Durant in 2016 and their existing core of Stephen Curry, Klay Thompson, and Draymond Green. They won three NBA championships (2015, 2017, 2018) during this span.
- The Warriors were revolutionary in adopting analytics-driven strategies, particularly prioritizing three-point shooting and pace-and-space basketball. They led the league in offensive efficiency while maintaining a top-tier defense.
- **Why is this significant?**
  - Their dominance shows the value of having a cohesive team structure, a clear game plan, and player development. Teams in the past had relied on individual superstars; the Warriors showcased the power of a team-oriented approach.
  - This era also symbolizes a shift in basketball philosophy, where three-point shooting and small-ball lineups became the standard across the league.

---

#### **Question 4: Which team had the biggest increase or decrease in wins from one season to the next?**

**Result Summary**:
- The **Boston Celtics** had the biggest year-over-year improvement, increasing their wins by **42 games** between the **2006 season (24 wins)** and the **2007 season (66 wins)**.

| Big 3 Era | Turnaround |
|-----------|------------|
| <img src="https://lh4.googleusercontent.com/proxy/iZSKW2bXrnmL6Nxsmf6_priGGtv57qsXEqcLGlNBz6Qnhme8_aCRZZwQZU6cNxbfQ1OdMMaXZ2lCz5kZQqfSHHI7m5-kGCxcNyAdxMAhI5L4RpKevmg6u-z0ND_t8eEEoA9w7l89okK5i2er3phD2ENYdMATxbsia1kKG2J_t45-LqQMETgi99iZne1Z3WwazvYOjQOaftMZ526Vn7X4lMDI-FfpddJbzopYKA" alt="big3" width="700"> | <img src="https://github.com/user-attachments/assets/4d72d9a1-9b5d-4aa3-99d0-2b5af0500853" alt="turnaround" width="700"> |


**Context and Analysis**:
- This dramatic turnaround was primarily driven by the formation of the Celtics' "Big Three": Paul Pierce, Kevin Garnett, and Ray Allen. The team acquired Garnett and Allen in blockbuster trades during the offseason, instantly transforming them into championship contenders.
- Under the leadership of head coach Doc Rivers, the team focused on defensive intensity and unselfish play, leading to a dominant regular season and an NBA championship in 2008.
- **Why is this significant?**
  - This result highlights the power of roster reconstruction in the NBA. A team with the right combination of talent, leadership, and chemistry can achieve rapid success, even after years of mediocrity.
  - Conversely, teams experiencing a significant decrease in wins often face injuries, roster changes, or internal instability. For example, injuries to key players or the departure of star players can quickly dismantle a previously successful team.

---

### Dataset and Tools
- **Dataset**: The NBA Database from Kaggle contains detailed game-by-game information, including team names, game outcomes, and win-loss results.
- **Tools**:
  - SQL for querying the dataset.
  - Visualization tools (e.g., screenshots of tables or charts) for presenting results.

---

### Results Summary
#### **Total Wins and Losses for Each Team**
- Team with Most Wins: Boston Celtics
- Wins: 3,625
- Losses: 2,581

#### **Best Single-Season Win-Loss Record**
- Team: Golden State Warriors
- Year: 2015
- Wins: 73
- Losses: 9
- Win Percentage: 0.89

#### **Best 5-Year Win-Loss Record**
- Team: Golden State Warriors
- Period: 2014–2018
- Win Percentage: 0.785

#### **Biggest Turnaround in Wins**
- Team: Boston Celtics
- Improvement: +42 wins
- From 2006 (24 wins) to 2007 (66 wins)

---

### Repository Structure

### Folders
1. **`scripts`**: Contains SQL scripts for querying the dataset.
2. **`results`**: Stores images and results generated from running the queries.
3. **`data`**: Placeholder for the original dataset file from Kaggle (not included in the repository due to size).

### Files
1. **`README.md`**: Documentation about the project, its structure, and how to run the analysis.
2. **`scripts/script_2.sql`**: SQL script to find the team with the best win-loss record in a single season.
3. **`scripts/script_3.sql`**: SQL script to calculate the total wins and losses for each team in their entire history.
4. **`scripts/script_4.sql`**: SQL script to identify the team with the best win-loss record over a 5-year period.
5. **`scripts/script_5.sql`**: SQL script to find the team with the largest increase or decrease in wins from one season to the next.

---

### Instructions to Run the Analysis

1. **Setup Database**:
   - Download the dataset from the [Kaggle NBA Database](https://www.kaggle.com/datasets/wyattowalsh/basketball).
   - Import the dataset into a SQL database (e.g., PostgreSQL).

2. **Execute Queries**:
   - Run each script in the `scripts` folder using your preferred SQL client.

3. **View Results**:
   - Results from each query have been saved as images in the `results` folder:

---

### Future Enhancements
- Add more advanced statistical queries.
- Use Python with libraries like Pandas and Matplotlib for further analysis and visualization.
- Automate the querying and visualization process.
