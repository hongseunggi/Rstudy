# Study Loop and Conditional statement In R language and Correlation in R programming

this time I practiced Loop and Conditional Statement, and Correlation analysis in R programming

Using Loop and Conditional Statement is very similar to When we using this in C, C++, Java, Phyton..
so We can learn it easy way
### loop statement
> in R Language
  <pre><code>for(i in 1:10)</code></pre>
> is same in C Language
  <pre><code>for(int i = 1; i<11; 1++)</code></pre>
### Conditional statement
> in R Language
      <pre><code>if(Comparative Condition){ 
               //when Condition is true
               Execute this section
             }
             else{
               //when Condition is False
               Execute this section
             }</code></pre>
             <pre><code>ifelse(Comparative Condition, TRUE, FLASE)</code></pre>
compare to C language "ifelse" statement is unique one
<hr/>

### Correlation analysis in R
Correlation is a statistical measure that indicates the extent to which two or more variables fluctuate together

In R programming using plot(), boxplot(), cor(), pairs() and so on Correlation can be analyzed 
> Example
  <pre><code>plot(trees$Girth~trees$Height) # trees is Dataframe in Rstudio</code></pre>
  <img src="https://user-images.githubusercontent.com/46149624/72048546-5ce8d200-3300-11ea-9235-29a0cfe227dc.png" width="200" height="200"></img><br/>
  <pre><code>pairs(trees) # trees is Dataframe in Rstudio</code></pre>
  <img src="https://user-images.githubusercontent.com/46149624/72049118-a2f26580-3301-11ea-933f-a0d2aecb8602.png" width="200" height="200"></img><br/>
  <pre><code>cor(trees) # trees is Dataframe in Rstudio</code></pre>
  <img src="https://user-images.githubusercontent.com/46149624/72049215-d0d7aa00-3301-11ea-9f17-eef980d61466.png" width="400" height="200"></img><br/>
We learnd about this practice, Where correlation value is more bigger than others or less than others, scatter plot graph was drawing more Dense and tightly

#### if you have any question
Please send to email tmdrl5661@gmail.com
