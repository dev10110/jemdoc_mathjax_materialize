jemdoc+MathJax+Materialize
==========================
*jemdoc* is a light text-based markup language designed for creating websites.  See http://jemdoc.jaboc.net/ for more information and the detailed usage of jemdoc.

*jemdoc+MathJax* adds the MathJax support to jemdoc.  You can use the same jemdoc syntax (and therefore no need to make any changes in your jemdoc scripts if you are an original jemdoc user), but the equations will be beautifully rendered by MathJax.  See http://web.stanford.edu/~wsshin/jemdoc+mathjax.html for more information and examples. 

*jemdoc+MathJax+Materialize* adds MaterializeCSS based formatting to the document, making it responsive on small screens, and providing a more modern-looking interface. 

System requirements
-------------------
Python 2 or Python 3

(Many thanks to [Ganesh Ajjanagadde](http://www.mit.edu/~gajjanag/), who made most of the changes for Python 3 compatibility.)

What's new in jemdoc+MathJax+Materialize
-----------------------------------------

![Screenshot](/www/assets/cover.png)

- MaterializeCSS support (removes overall table, replaces it with responsive two column layout)
- Easier (to me) Makefile
- Deploy to GitHub Pages shell script
- Optional link checking

(but you're free to change it out for the original ones)



How to use jemdoc+MathJax+Materialize
-------------------------------------
With Python available to the shell,

	make src=./example/ 

See the documentation at https://dev10110.github.io/jemdoc_mathjax_materialize/make.html for more info.

Disclaimer
----------
As per the Jemdoc+MathJax author:

> The focus of the implementation of the additional features was to "make them just work," so the implementation is suboptimal, both in terms of performance and style.  
> 
> Still, several users and I find jemdoc+MathJax is quite stable and does the job correctly :-)
>
> Wonseok Shin

README of the original jemdoc
-----------------------------
> jemdoc is a light text-based markup language designed for creating websites. It
> takes a text file written with jemdoc markup, an optional configuration file and
> an optional menu file, and makes static websites that look something like
> http://jemdoc.jaboc.net/.
> 
> It was written by me, Jacob Mattingley, in 2007, and definitely isn't the type
> of code I would put on my CV. Lots of people use jemdoc, especially in academia.
> 
> Much more info at http://jemdoc.jaboc.net/.

