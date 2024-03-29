---
title: "Country Level Automated Report for Netherlands"
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
<caption>Descriptive Summary of Categorical Variables for Netherlands</caption>
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
   <td style="text-align:left;width: 4cm; "> Netherlands </td>
   <td style="text-align:right;"> 2404 </td>
   <td style="text-align:right;"> 100.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Bachelor or equivalent </td>
   <td style="text-align:right;"> 301 </td>
   <td style="text-align:right;"> 12.5207987 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Doctoral or equivalent </td>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:right;"> 0.8735441 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Less than primary </td>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:right;"> 0.7071547 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Lower secondary </td>
   <td style="text-align:right;"> 633 </td>
   <td style="text-align:right;"> 26.3311148 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Master or equivalent </td>
   <td style="text-align:right;"> 526 </td>
   <td style="text-align:right;"> 21.8801997 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Post-secondary non tertiary </td>
   <td style="text-align:right;"> 33 </td>
   <td style="text-align:right;"> 1.3727121 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Primary </td>
   <td style="text-align:right;"> 65 </td>
   <td style="text-align:right;"> 2.7038270 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Short-cycle tertiary </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 6.2396007 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> Upper secondary </td>
   <td style="text-align:right;"> 623 </td>
   <td style="text-align:right;"> 25.9151414 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> dont know </td>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 0.8319468 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> education </td>
   <td style="text-align:left;width: 4cm; "> no answer </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 0.6239601 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> child_suffers </td>
   <td style="text-align:left;width: 4cm; "> agree </td>
   <td style="text-align:right;"> 403 </td>
   <td style="text-align:right;"> 16.7637271 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> child_suffers </td>
   <td style="text-align:left;width: 4cm; "> agree strongly </td>
   <td style="text-align:right;"> 77 </td>
   <td style="text-align:right;"> 3.2029950 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> child_suffers </td>
   <td style="text-align:left;width: 4cm; "> disagree </td>
   <td style="text-align:right;"> 1393 </td>
   <td style="text-align:right;"> 57.9450915 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> child_suffers </td>
   <td style="text-align:left;width: 4cm; "> disagree strongly </td>
   <td style="text-align:right;"> 485 </td>
   <td style="text-align:right;"> 20.1747088 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> child_suffers </td>
   <td style="text-align:left;width: 4cm; "> dont know </td>
   <td style="text-align:right;"> 36 </td>
   <td style="text-align:right;"> 1.4975042 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> child_suffers </td>
   <td style="text-align:left;width: 4cm; "> no answer </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 0.4159734 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> jobs_are_scarce </td>
   <td style="text-align:left;width: 4cm; "> agree </td>
   <td style="text-align:right;"> 564 </td>
   <td style="text-align:right;"> 23.4608985 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> jobs_are_scarce </td>
   <td style="text-align:left;width: 4cm; "> agree strongly </td>
   <td style="text-align:right;"> 309 </td>
   <td style="text-align:right;"> 12.8535774 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> jobs_are_scarce </td>
   <td style="text-align:left;width: 4cm; "> disagree </td>
   <td style="text-align:right;"> 634 </td>
   <td style="text-align:right;"> 26.3727121 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> jobs_are_scarce </td>
   <td style="text-align:left;width: 4cm; "> disagree strongly </td>
   <td style="text-align:right;"> 240 </td>
   <td style="text-align:right;"> 9.9833611 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> jobs_are_scarce </td>
   <td style="text-align:left;width: 4cm; "> dont know </td>
   <td style="text-align:right;"> 40 </td>
   <td style="text-align:right;"> 1.6638935 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> jobs_are_scarce </td>
   <td style="text-align:left;width: 4cm; "> neither agree nor disagree </td>
   <td style="text-align:right;"> 607 </td>
   <td style="text-align:right;"> 25.2495840 </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; "> jobs_are_scarce </td>
   <td style="text-align:left;width: 4cm; "> no answer </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 0.4159734 </td>
  </tr>
</tbody>
</table>
## Table 2 - Continuous Variable Descriptive Statistics ##

Table: Descriptive Statistics for Age in Netherlands

|    Mean|       SD| Min| 25% Quantile| Median| 75% Quantile| Max|
|-------:|--------:|---:|------------:|------:|------------:|---:|
| 53.0183| 17.31807|  18|           39|     55|           68|  82|
# Sex Impact on Dependent Variables #

### Plot 1 Sex/Jobs are Scarce ###
![](report_Netherlands_files/figure-html/jobs-are-scarce-bar-plot-1.png)<!-- -->

### Plot 2 Sex/Child Suffers ###

![](report_Netherlands_files/figure-html/child-suffers-sex-bar-plot-1.png)<!-- -->

## Regression Models ##


```{=html}
<div id="xnhakfislh" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#xnhakfislh table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#xnhakfislh thead, #xnhakfislh tbody, #xnhakfislh tfoot, #xnhakfislh tr, #xnhakfislh td, #xnhakfislh th {
  border-style: none;
}

#xnhakfislh p {
  margin: 0;
  padding: 0;
}

#xnhakfislh .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#xnhakfislh .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#xnhakfislh .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#xnhakfislh .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#xnhakfislh .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xnhakfislh .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xnhakfislh .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xnhakfislh .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#xnhakfislh .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#xnhakfislh .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#xnhakfislh .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#xnhakfislh .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#xnhakfislh .gt_spanner_row {
  border-bottom-style: hidden;
}

#xnhakfislh .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#xnhakfislh .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#xnhakfislh .gt_from_md > :first-child {
  margin-top: 0;
}

#xnhakfislh .gt_from_md > :last-child {
  margin-bottom: 0;
}

#xnhakfislh .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#xnhakfislh .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#xnhakfislh .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#xnhakfislh .gt_row_group_first td {
  border-top-width: 2px;
}

#xnhakfislh .gt_row_group_first th {
  border-top-width: 2px;
}

#xnhakfislh .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xnhakfislh .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#xnhakfislh .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#xnhakfislh .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xnhakfislh .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xnhakfislh .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#xnhakfislh .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#xnhakfislh .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#xnhakfislh .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xnhakfislh .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xnhakfislh .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#xnhakfislh .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xnhakfislh .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#xnhakfislh .gt_left {
  text-align: left;
}

#xnhakfislh .gt_center {
  text-align: center;
}

#xnhakfislh .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#xnhakfislh .gt_font_normal {
  font-weight: normal;
}

#xnhakfislh .gt_font_bold {
  font-weight: bold;
}

#xnhakfislh .gt_font_italic {
  font-style: italic;
}

#xnhakfislh .gt_super {
  font-size: 65%;
}

#xnhakfislh .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#xnhakfislh .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#xnhakfislh .gt_indent_1 {
  text-indent: 5px;
}

#xnhakfislh .gt_indent_2 {
  text-indent: 10px;
}

#xnhakfislh .gt_indent_3 {
  text-indent: 15px;
}

#xnhakfislh .gt_indent_4 {
  text-indent: 20px;
}

#xnhakfislh .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings gt_spanner_row">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="2" colspan="1" scope="col" id="&lt;strong&gt;Characteristic&lt;/strong&gt;"><strong>Characteristic</strong></th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="3" scope="colgroup" id="Jobs Are Scarce Numeric">
        <span class="gt_column_spanner">Jobs Are Scarce Numeric</span>
      </th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="3" scope="colgroup" id="Child Suffers Numeric">
        <span class="gt_column_spanner">Child Suffers Numeric</span>
      </th>
    </tr>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="&lt;strong&gt;Beta&lt;/strong&gt;"><strong>Beta</strong></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="&lt;strong&gt;95% CI&lt;/strong&gt;&lt;span class=&quot;gt_footnote_marks&quot; style=&quot;white-space:nowrap;font-style:italic;font-weight:normal;&quot;&gt;&lt;sup&gt;1&lt;/sup&gt;&lt;/span&gt;"><strong>95% CI</strong><span class="gt_footnote_marks" style="white-space:nowrap;font-style:italic;font-weight:normal;"><sup>1</sup></span></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="&lt;strong&gt;p-value&lt;/strong&gt;"><strong>p-value</strong></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="&lt;strong&gt;Beta&lt;/strong&gt;"><strong>Beta</strong></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="&lt;strong&gt;95% CI&lt;/strong&gt;&lt;span class=&quot;gt_footnote_marks&quot; style=&quot;white-space:nowrap;font-style:italic;font-weight:normal;&quot;&gt;&lt;sup&gt;1&lt;/sup&gt;&lt;/span&gt;"><strong>95% CI</strong><span class="gt_footnote_marks" style="white-space:nowrap;font-style:italic;font-weight:normal;"><sup>1</sup></span></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="&lt;strong&gt;p-value&lt;/strong&gt;"><strong>p-value</strong></th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="label" class="gt_row gt_left">age</td>
<td headers="estimate_1" class="gt_row gt_center">0.00</td>
<td headers="ci_1" class="gt_row gt_center">0.00, 0.00</td>
<td headers="p.value_1" class="gt_row gt_center">0.7</td>
<td headers="estimate_2" class="gt_row gt_center">0.00</td>
<td headers="ci_2" class="gt_row gt_center">0.00, 0.00</td>
<td headers="p.value_2" class="gt_row gt_center">0.4</td></tr>
    <tr><td headers="label" class="gt_row gt_left">age_squared</td>
<td headers="estimate_1" class="gt_row gt_center">0.00</td>
<td headers="ci_1" class="gt_row gt_center">0.00, 0.00</td>
<td headers="p.value_1" class="gt_row gt_center">0.022</td>
<td headers="estimate_2" class="gt_row gt_center">0.00</td>
<td headers="ci_2" class="gt_row gt_center">0.00, 0.00</td>
<td headers="p.value_2" class="gt_row gt_center"><0.001</td></tr>
    <tr><td headers="label" class="gt_row gt_left">respondent_sex</td>
<td headers="estimate_1" class="gt_row gt_center"><br /></td>
<td headers="ci_1" class="gt_row gt_center"><br /></td>
<td headers="p.value_1" class="gt_row gt_center"><br /></td>
<td headers="estimate_2" class="gt_row gt_center"><br /></td>
<td headers="ci_2" class="gt_row gt_center"><br /></td>
<td headers="p.value_2" class="gt_row gt_center"><br /></td></tr>
    <tr><td headers="label" class="gt_row gt_left">    dont know</td>
<td headers="estimate_1" class="gt_row gt_center">—</td>
<td headers="ci_1" class="gt_row gt_center">—</td>
<td headers="p.value_1" class="gt_row gt_center"><br /></td>
<td headers="estimate_2" class="gt_row gt_center">—</td>
<td headers="ci_2" class="gt_row gt_center">—</td>
<td headers="p.value_2" class="gt_row gt_center"><br /></td></tr>
    <tr><td headers="label" class="gt_row gt_left">    female</td>
<td headers="estimate_1" class="gt_row gt_center">-0.10</td>
<td headers="ci_1" class="gt_row gt_center">-1.2, 0.95</td>
<td headers="p.value_1" class="gt_row gt_center">0.8</td>
<td headers="estimate_2" class="gt_row gt_center">0.07</td>
<td headers="ci_2" class="gt_row gt_center">-0.75, 0.89</td>
<td headers="p.value_2" class="gt_row gt_center">0.9</td></tr>
    <tr><td headers="label" class="gt_row gt_left">    male</td>
<td headers="estimate_1" class="gt_row gt_center">-0.06</td>
<td headers="ci_1" class="gt_row gt_center">-1.1, 0.99</td>
<td headers="p.value_1" class="gt_row gt_center">>0.9</td>
<td headers="estimate_2" class="gt_row gt_center">-0.01</td>
<td headers="ci_2" class="gt_row gt_center">-0.83, 0.81</td>
<td headers="p.value_2" class="gt_row gt_center">>0.9</td></tr>
    <tr><td headers="label" class="gt_row gt_left">    no answer</td>
<td headers="estimate_1" class="gt_row gt_center">0.03</td>
<td headers="ci_1" class="gt_row gt_center">-1.2, 1.2</td>
<td headers="p.value_1" class="gt_row gt_center">>0.9</td>
<td headers="estimate_2" class="gt_row gt_center">0.76</td>
<td headers="ci_2" class="gt_row gt_center">-0.18, 1.7</td>
<td headers="p.value_2" class="gt_row gt_center">0.11</td></tr>
    <tr><td headers="label" class="gt_row gt_left">education</td>
<td headers="estimate_1" class="gt_row gt_center"><br /></td>
<td headers="ci_1" class="gt_row gt_center"><br /></td>
<td headers="p.value_1" class="gt_row gt_center"><br /></td>
<td headers="estimate_2" class="gt_row gt_center"><br /></td>
<td headers="ci_2" class="gt_row gt_center"><br /></td>
<td headers="p.value_2" class="gt_row gt_center"><br /></td></tr>
    <tr><td headers="label" class="gt_row gt_left">    Bachelor or equivalent</td>
<td headers="estimate_1" class="gt_row gt_center">—</td>
<td headers="ci_1" class="gt_row gt_center">—</td>
<td headers="p.value_1" class="gt_row gt_center"><br /></td>
<td headers="estimate_2" class="gt_row gt_center">—</td>
<td headers="ci_2" class="gt_row gt_center">—</td>
<td headers="p.value_2" class="gt_row gt_center"><br /></td></tr>
    <tr><td headers="label" class="gt_row gt_left">    Doctoral or equivalent</td>
<td headers="estimate_1" class="gt_row gt_center">0.36</td>
<td headers="ci_1" class="gt_row gt_center">0.25, 0.48</td>
<td headers="p.value_1" class="gt_row gt_center"><0.001</td>
<td headers="estimate_2" class="gt_row gt_center">0.15</td>
<td headers="ci_2" class="gt_row gt_center">0.06, 0.24</td>
<td headers="p.value_2" class="gt_row gt_center">0.001</td></tr>
    <tr><td headers="label" class="gt_row gt_left">    dont know</td>
<td headers="estimate_1" class="gt_row gt_center">-0.57</td>
<td headers="ci_1" class="gt_row gt_center">-0.86, -0.28</td>
<td headers="p.value_1" class="gt_row gt_center"><0.001</td>
<td headers="estimate_2" class="gt_row gt_center">-0.50</td>
<td headers="ci_2" class="gt_row gt_center">-0.72, -0.27</td>
<td headers="p.value_2" class="gt_row gt_center"><0.001</td></tr>
    <tr><td headers="label" class="gt_row gt_left">    Less than primary</td>
<td headers="estimate_1" class="gt_row gt_center">-0.72</td>
<td headers="ci_1" class="gt_row gt_center">-0.84, -0.60</td>
<td headers="p.value_1" class="gt_row gt_center"><0.001</td>
<td headers="estimate_2" class="gt_row gt_center">-0.72</td>
<td headers="ci_2" class="gt_row gt_center">-0.81, -0.62</td>
<td headers="p.value_2" class="gt_row gt_center"><0.001</td></tr>
    <tr><td headers="label" class="gt_row gt_left">    Lower secondary</td>
<td headers="estimate_1" class="gt_row gt_center">-0.57</td>
<td headers="ci_1" class="gt_row gt_center">-0.61, -0.53</td>
<td headers="p.value_1" class="gt_row gt_center"><0.001</td>
<td headers="estimate_2" class="gt_row gt_center">-0.47</td>
<td headers="ci_2" class="gt_row gt_center">-0.50, -0.43</td>
<td headers="p.value_2" class="gt_row gt_center"><0.001</td></tr>
    <tr><td headers="label" class="gt_row gt_left">    Master or equivalent</td>
<td headers="estimate_1" class="gt_row gt_center">-0.16</td>
<td headers="ci_1" class="gt_row gt_center">-0.20, -0.12</td>
<td headers="p.value_1" class="gt_row gt_center"><0.001</td>
<td headers="estimate_2" class="gt_row gt_center">-0.06</td>
<td headers="ci_2" class="gt_row gt_center">-0.09, -0.02</td>
<td headers="p.value_2" class="gt_row gt_center"><0.001</td></tr>
    <tr><td headers="label" class="gt_row gt_left">    no answer</td>
<td headers="estimate_1" class="gt_row gt_center">-0.56</td>
<td headers="ci_1" class="gt_row gt_center">-0.71, -0.40</td>
<td headers="p.value_1" class="gt_row gt_center"><0.001</td>
<td headers="estimate_2" class="gt_row gt_center">-0.67</td>
<td headers="ci_2" class="gt_row gt_center">-0.79, -0.55</td>
<td headers="p.value_2" class="gt_row gt_center"><0.001</td></tr>
    <tr><td headers="label" class="gt_row gt_left">    other</td>
<td headers="estimate_1" class="gt_row gt_center">-0.05</td>
<td headers="ci_1" class="gt_row gt_center">-0.34, 0.23</td>
<td headers="p.value_1" class="gt_row gt_center">0.7</td>
<td headers="estimate_2" class="gt_row gt_center">-0.14</td>
<td headers="ci_2" class="gt_row gt_center">-0.36, 0.08</td>
<td headers="p.value_2" class="gt_row gt_center">0.2</td></tr>
    <tr><td headers="label" class="gt_row gt_left">    Post-secondary non tertiary</td>
<td headers="estimate_1" class="gt_row gt_center">-0.46</td>
<td headers="ci_1" class="gt_row gt_center">-0.52, -0.40</td>
<td headers="p.value_1" class="gt_row gt_center"><0.001</td>
<td headers="estimate_2" class="gt_row gt_center">-0.24</td>
<td headers="ci_2" class="gt_row gt_center">-0.28, -0.19</td>
<td headers="p.value_2" class="gt_row gt_center"><0.001</td></tr>
    <tr><td headers="label" class="gt_row gt_left">    Primary</td>
<td headers="estimate_1" class="gt_row gt_center">-0.50</td>
<td headers="ci_1" class="gt_row gt_center">-0.56, -0.44</td>
<td headers="p.value_1" class="gt_row gt_center"><0.001</td>
<td headers="estimate_2" class="gt_row gt_center">-0.47</td>
<td headers="ci_2" class="gt_row gt_center">-0.52, -0.43</td>
<td headers="p.value_2" class="gt_row gt_center"><0.001</td></tr>
    <tr><td headers="label" class="gt_row gt_left">    Short-cycle tertiary</td>
<td headers="estimate_1" class="gt_row gt_center">-0.29</td>
<td headers="ci_1" class="gt_row gt_center">-0.34, -0.24</td>
<td headers="p.value_1" class="gt_row gt_center"><0.001</td>
<td headers="estimate_2" class="gt_row gt_center">-0.15</td>
<td headers="ci_2" class="gt_row gt_center">-0.19, -0.11</td>
<td headers="p.value_2" class="gt_row gt_center"><0.001</td></tr>
    <tr><td headers="label" class="gt_row gt_left">    Upper secondary</td>
<td headers="estimate_1" class="gt_row gt_center">-0.60</td>
<td headers="ci_1" class="gt_row gt_center">-0.63, -0.56</td>
<td headers="p.value_1" class="gt_row gt_center"><0.001</td>
<td headers="estimate_2" class="gt_row gt_center">-0.35</td>
<td headers="ci_2" class="gt_row gt_center">-0.37, -0.32</td>
<td headers="p.value_2" class="gt_row gt_center"><0.001</td></tr>
  </tbody>
  
  <tfoot class="gt_footnotes">
    <tr>
      <td class="gt_footnote" colspan="7"><span class="gt_footnote_marks" style="white-space:nowrap;font-style:italic;font-weight:normal;"><sup>1</sup></span> CI = Confidence Interval</td>
    </tr>
  </tfoot>
</table>
</div>
```
Regression analysis for jobs_are_scarce_numeric in Netherlands reveals the following significant relationships (p < 0.05):

the intercept has a positive effect (estimate: 2.842 *** )
age_squared has a negative effect (estimate: 0 * )
educationDoctoral or equivalent has a positive effect (estimate: 0.361 *** )
educationdont know has a negative effect (estimate: -0.572 *** )
educationLess than primary has a negative effect (estimate: -0.723 *** )
educationLower secondary has a negative effect (estimate: -0.57 *** )
educationMaster or equivalent has a negative effect (estimate: -0.162 *** )
educationno answer has a negative effect (estimate: -0.557 *** )
educationPost-secondary non tertiary has a negative effect (estimate: -0.462 *** )
educationPrimary has a negative effect (estimate: -0.496 *** )
educationShort-cycle tertiary has a negative effect (estimate: -0.292 *** )
educationUpper secondary has a negative effect (estimate: -0.595 *** ) 

Regression analysis for child_suffers_numeric in Netherlands reveals the following significant relationships (p < 0.05):

the intercept has a positive effect (estimate: 2.965 *** )
age_squared has a negative effect (estimate: 0 *** )
educationDoctoral or equivalent has a positive effect (estimate: 0.147 ** )
educationdont know has a negative effect (estimate: -0.497 *** )
educationLess than primary has a negative effect (estimate: -0.716 *** )
educationLower secondary has a negative effect (estimate: -0.468 *** )
educationMaster or equivalent has a negative effect (estimate: -0.058 *** )
educationno answer has a negative effect (estimate: -0.668 *** )
educationPost-secondary non tertiary has a negative effect (estimate: -0.236 *** )
educationPrimary has a negative effect (estimate: -0.474 *** )
educationShort-cycle tertiary has a negative effect (estimate: -0.153 *** )
educationUpper secondary has a negative effect (estimate: -0.346 *** )





