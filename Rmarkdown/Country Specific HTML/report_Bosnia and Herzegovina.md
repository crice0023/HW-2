---
title: "Country Level Automated Report for Bosnia and Herzegovina"
output:
  html_document:
    keep_md: true  # makes Github show html outputs
params:
  country: "DefaultCountry" # This default value is just for testing
---
## General Information ##

  Within this report we have country-specific categorical descriptive statistics. We can observe each report is a stand-alone document (take note of the 100% percentage of the specified state, along with the frequency of reports, and then a break down by category comprising the entire frequency). 
  
  Our continuous variable, age, is also state-specific. Then we display bar charts on responses by sex regarding our two dependent variables; jobs_are_scarce and child_suffers. Last we show a regression model along with a dynamic report explaining the results. 






## Table 1 - Categorical Variable Descriptive Statistics ##
<table class="table" style="color: black; margin-left: auto; margin-right: auto;">
<caption>Descriptive Summary of Categorical Variables for Bosnia and Herzegovina</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Variable </th>
   <th style="text-align:left;"> Category </th>
   <th style="text-align:right;"> Frequency </th>
   <th style="text-align:right;"> Percentage </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 4cm; "> country </td>
   <td style="text-align:left;width: 4cm; "> Bosnia and Herzegovina </td>
   <td style="text-align:right;"> 1724 </td>
   <td style="text-align:right;"> 100.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Bachelor or equivalent </td>
   <td style="text-align:right;"> 51 </td>
   <td style="text-align:right;"> 2.9582367 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Doctoral or equivalent </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0.1740139 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Less than primary </td>
   <td style="text-align:right;"> 31 </td>
   <td style="text-align:right;"> 1.7981439 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Lower secondary </td>
   <td style="text-align:right;"> 240 </td>
   <td style="text-align:right;"> 13.9211137 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Master or equivalent </td>
   <td style="text-align:right;"> 177 </td>
   <td style="text-align:right;"> 10.2668213 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Primary </td>
   <td style="text-align:right;"> 104 </td>
   <td style="text-align:right;"> 6.0324826 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Short-cycle tertiary </td>
   <td style="text-align:right;"> 54 </td>
   <td style="text-align:right;"> 3.1322506 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Upper secondary </td>
   <td style="text-align:right;"> 1044 </td>
   <td style="text-align:right;"> 60.5568445 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> dont know </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0.1740139 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> no answer </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:right;"> 0.9860789 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> child_suffers </td>
   <td style="text-align:left;width: 4cm; "> agree </td>
   <td style="text-align:right;"> 554 </td>
   <td style="text-align:right;"> 32.1345708 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> child_suffers </td>
   <td style="text-align:left;width: 4cm; "> agree strongly </td>
   <td style="text-align:right;"> 249 </td>
   <td style="text-align:right;"> 14.4431555 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> child_suffers </td>
   <td style="text-align:left;width: 4cm; "> disagree </td>
   <td style="text-align:right;"> 604 </td>
   <td style="text-align:right;"> 35.0348028 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> child_suffers </td>
   <td style="text-align:left;width: 4cm; "> disagree strongly </td>
   <td style="text-align:right;"> 297 </td>
   <td style="text-align:right;"> 17.2273782 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> child_suffers </td>
   <td style="text-align:left;width: 4cm; "> dont know </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:right;"> 0.9860789 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> child_suffers </td>
   <td style="text-align:left;width: 4cm; "> no answer </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0.1740139 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> jobs_are_scarce </td>
   <td style="text-align:left;width: 4cm; "> agree </td>
   <td style="text-align:right;"> 378 </td>
   <td style="text-align:right;"> 21.9257541 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> jobs_are_scarce </td>
   <td style="text-align:left;width: 4cm; "> agree strongly </td>
   <td style="text-align:right;"> 1100 </td>
   <td style="text-align:right;"> 63.8051044 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> jobs_are_scarce </td>
   <td style="text-align:left;width: 4cm; "> disagree </td>
   <td style="text-align:right;"> 86 </td>
   <td style="text-align:right;"> 4.9883991 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> jobs_are_scarce </td>
   <td style="text-align:left;width: 4cm; "> disagree strongly </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 0.4060325 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> jobs_are_scarce </td>
   <td style="text-align:left;width: 4cm; "> dont know </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 0.6380510 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> jobs_are_scarce </td>
   <td style="text-align:left;width: 4cm; "> neither agree nor disagree </td>
   <td style="text-align:right;"> 142 </td>
   <td style="text-align:right;"> 8.2366589 </td>
  </tr>
</tbody>
</table>
## Table 2 - Continuous Variable Descriptive Statistics ##

Table: Descriptive Statistics for Age in Bosnia and Herzegovina

|     Mean|       SD| Min| 25% Quantile| Median| 75% Quantile| Max|
|--------:|--------:|---:|------------:|------:|------------:|---:|
| 46.88457| 18.11257|  18|           30|     48|           61|  82|
# Sex Impact on Dependent Variables #

### Plot 1 Sex/Jobs are Scarce ###
![](report_Bosnia and Herzegovina_files/figure-html/jobs-are-scarce-bar-plot-1.png)<!-- -->

### Plot 2 Sex/Child Suffers ###

![](report_Bosnia and Herzegovina_files/figure-html/child-suffers-sex-bar-plot-1.png)<!-- -->

## Regression Models ##

Regression analysis for child suffers numeric in Bosnia and Herzegovina reveals the following significant relationships (p < 0.05):

the intercept has a positive effect (estimate: 2.684 *** )
respondent_sex_recodemale has a negative effect (estimate: -0.074 *** ) 

Regression analysis for jobs are scarce numeric in Bosnia and Herzegovina reveals the following significant relationships (p < 0.05):

the intercept has a positive effect (estimate: 2.265 *** )
respondent_sex_recodemale has a positive effect (estimate: 0.033 ** )




<table style="text-align:center"><caption><strong>Regression Models for Bosnia and Herzegovina</strong></caption>
<tr><td colspan="3" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="2"><em>Dependent variable:</em></td></tr>
<tr><td></td><td colspan="2" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>child_suffers_numeric</td><td>jobs_are_scarce_numeric</td></tr>
<tr><td style="text-align:left"></td><td>(1)</td><td>(2)</td></tr>
<tr><td colspan="3" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Intercept</td><td>-0.074<sup>***</sup></td><td>0.033<sup>***</sup></td></tr>
<tr><td style="text-align:left"></td><td>(0.008)</td><td>(0.011)</td></tr>
<tr><td style="text-align:left"></td><td></td><td></td></tr>
<tr><td style="text-align:left">Sex Female</td><td>0.162</td><td>0.005</td></tr>
<tr><td style="text-align:left"></td><td>(0.188)</td><td>(0.254)</td></tr>
<tr><td style="text-align:left"></td><td></td><td></td></tr>
<tr><td style="text-align:left">Constant</td><td>2.684<sup>***</sup></td><td>2.265<sup>***</sup></td></tr>
<tr><td style="text-align:left"></td><td>(0.005)</td><td>(0.007)</td></tr>
<tr><td style="text-align:left"></td><td></td><td></td></tr>
<tr><td colspan="3" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Observations</td><td>59,438</td><td>59,438</td></tr>
<tr><td style="text-align:left">R<sup>2</sup></td><td>0.001</td><td>0.0002</td></tr>
<tr><td style="text-align:left">Adjusted R<sup>2</sup></td><td>0.001</td><td>0.0001</td></tr>
<tr><td style="text-align:left">Residual Std. Error (df = 59435)</td><td>0.958</td><td>1.296</td></tr>
<tr><td style="text-align:left">F Statistic (df = 2; 59435)</td><td>44.635<sup>***</sup></td><td>4.782<sup>***</sup></td></tr>
<tr><td colspan="3" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="2" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

