# dbt PowerFlow Project  
PowerFlow is a dbt-based project for calculating Return on Investment (RoI) from mobile app marketing data. It combines AppFlyer and Google Ads data to create models, macros, and configurations that transform raw data into useful insights. The project uses dbt’s features for data modeling, testing, and documentation to ensure accurate RoI calculations.  
  
### Given data:  
* [APPSLYER_RAW](https://github.com/armandaslid/dbt_powerflow/blob/main/other_files/appsflyer_raw.csv)  
* [GOOGLE_ADDS](https://github.com/armandaslid/dbt_powerflow/blob/main/other_files/google_ads.csv)  
* [REGISTRATIONS_RAW](https://github.com/armandaslid/dbt_powerflow/blob/main/other_files/registrations.csv)  
* [TRANSACTIONS](https://github.com/armandaslid/dbt_powerflow/blob/main/other_files/transactions.csv)
* [CAMPAIGN_COSTS](https://github.com/armandaslid/dbt_powerflow/blob/main/other_files/campaign_costs.csv)  

### Preliminary DAG for creating the RoI dataset:  
<img src="https://github.com/armandaslid/dbt_powerflow/blob/main/other_files/DAG_PowerFlow.png" alt="PowerFlow DAG">  

### dbt-generated documentation:  
* [dbt Docs](https://ga643.us1.dbt.com/accounts/70471823425060/develop/70471823575056/docs/index.html#!/overview)

The rest of the models, tests, and other related files can be found inside [this repo](https://github.com/armandaslid/dbt_powerflow).
