<TeXmacs|2.1.4>

<style|book>

<\body>
  <doc-data|<doc-title|Build Quantum Mechanics from Scratch>>

  <section|Introduction>

  We derive the Schr<wide|o|\<ddot\>>dinger's equation of quantum mechanics
  from several basic experimental facts. These facts are treated as axioms.
  In fact, what we will get is a generalized Schr<wide|o|\<ddot\>>dinger
  equation, which is the most generic equation that these axioms can imply.

  <subsection|Conventions>

  <\itemize>
    <item><strong|Definitions> are in bold font.

    <item><em|Important> statements are in italic font.

    <item>Only important equations are numbered.

    <item><with|color|red|Questions> are in red color.

    <item><with|color|dark green|Conclusions> are in green color.
  </itemize>

  <subsection|Abbreviations>

  Because we are doing high-dimensional calculus, abbreviations are essential
  for not falling in the \Pdebauchery of formulae\Q.

  When <math|x,y\<in\>\<bbb-R\><rsup|d>>, denote <math|x
  y=x\<cdot\>y=<big|sum><rsub|\<alpha\>>x<rsup|\<alpha\>>y<rsup|\<alpha\>>>.
  Thus, <math|x<rsup|2>=x\<cdot\>x=<big|sum><rsub|\<alpha\>><around*|(|x<rsup|\<alpha\>>|)><rsup|2>>.
  Furthermore, we use multi-dimensional index
  <math|\<alpha\>=<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>
  for abbreviating partial derivative <math|<around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>f|)><around*|(|x|)>>
  to <math|\<partial\><rsub|\<alpha\>><rsup|n>f<around*|(|x|)>>, and
  abbreviating tensor (generalization of vector to multiple indices)
  <math|M<rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|n>> to
  M<rsup|\<alpha\>>>. For example, the product
  <math|v<rsup|\<alpha\><rsub|1>>*\<cdots\>*v<rsup|\<alpha\><rsub|n>>> can be
  abbreviated as <math|v<rsup|\<alpha\>>>.

  Einstein's convention of summation is an elegant abbreviation for
  high-dimensional calculus and tensor analysis. It neglects the
  <math|\<Sigma\><rsub|\<alpha\>>> in <math|<big|sum><rsub|\<alpha\>>v<rsub|\<alpha\>>w<rsup|\<alpha\>>>,
  abbreviated to be <math|v<rsub|\<alpha\>>w<rsup|\<alpha\>>>. The indices
  are \Pbalanced\Q, one superscript, and the other subscript. The convention
  does not apply to the \Punbalanced\Q summation such as
  <math|<big|sum><rsub|\<alpha\>>v<rsup|\<alpha\>>w<rsup|\<alpha\>>>, because
  both indices are superscripts.

  <section|Probability Interpretation and Wavefunction>

  In classical Newtonian world, the states of a physical system with <math|n>
  particles are represented by elements in <math|\<bbb-R\><rsup|6n>>, or
  <strong|phase>s, <math|3n> dimensions for positions and <math|3n> for
  velocities (or momenta). The time evolution is thus a trajectory in the
  phase space, namely a map <math|\<bbb-R\>\<rightarrow\>\<bbb-R\><rsup|6n>>
  (with time as the domain).

  But for a quantum system, the states are represented by wavefunctions. A
  <strong|wavefunction> is a map from the positions of particles, together
  with time, to complex plane. Thus, a wavefunction maps
  <math|\<bbb-R\><rsup|d>\<times\>\<bbb-R\>\<rightarrow\>\<bbb-C\>> where
  <math|d=3n>. The first axiom claims how wavefunctions characterize a
  quantum system.

  <\axiom>
    [Probability Interpretation]<label|axiom:prob> The states of a quantum
    system are represented by wavefunctions. And given a wavefunction
    <math|\<varphi\>>, the probabilistic density that the particles are found
    in positions <math|x> at time <math|t> is given by
    <math|<around*|\||\<varphi\><around*|(|x,t|)>|\|><rsup|2>=\<varphi\><rsup|\<ast\>><around*|(|x,t|)>\<varphi\><around*|(|x,t|)>>.
  </axiom>

  <section|Superposition Principle and Time Evolution>

  The second axiom of quantum mechanics, superposition principle, claims that
  operations on wavefunctions shall be linear (so that wavefunctions can be
  superpositioned).

  <\axiom>
    [Superposition Principle]<label|axiom:sup> Physical laws that operate on
    quantum states shall be linear.
  </axiom>

  An implication of superposition principle is how quantum states (precisely,
  their wavefunctions) evolve with time. Axiom <reference|axiom:sup> implies
  that the equation of time evolution (as a physical law that operates on a
  quantum state) shall be linear: <math|\<partial\>\<varphi\>/\<partial\>t=L<around*|(|\<varphi\>|)>>
  where the operation <math|L> is linear. Mathematically, linearity imports a
  kernel <math|r:\<bbb-R\><rsup|d>\<times\>\<bbb-R\><rsup|d>\<rightarrow\>\<bbb-C\>>
  such that

  <\equation>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    r<around*|(|x,y|)>\<varphi\><around*|(|y,t|)>.<label|equ:superposition>
  </equation>

  The right hand side can be seen as a generalization of linear
  transformation in <math|\<bbb-R\><rsup|n>> like vector-matrix product
  <math|<big|sum><rsub|j>r<rsub|i j> \<varphi\><rsub|j>>. The imaginary
  <math|\<mathi\>> is employed for convenience.

  A direct result of axiom <reference|axiom:prob> is that probabilistic
  density shall be normalized. Namely, for any wave-function
  <math|\<varphi\>> and any <math|t\<in\>\<bbb-R\>>, we shall have

  <\equation>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    \<varphi\><rsup|\<ast\>><around*|(|x,t|)>\<varphi\><around*|(|x,t|)>=1.<label|eq:probtoself>
  </equation>

  Taking derivative on <math|t> gives

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    <frac|\<partial\>\<varphi\><rsup|\<ast\>>|\<partial\>t><around*|(|x,t|)>\<varphi\><around*|(|x,t|)>+<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    \<varphi\><rsup|\<ast\>><around*|(|x,t|)><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=0.
  </equation*>

  Replacing <math|<around*|(|\<partial\>\<varphi\>/\<partial\>t|)>> by
  equation <reference|equ:superposition> (and its complex conjugation) gives

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<big|int><rsub|\<bbb-R\><rsup|d>>
    \<mathd\>y \<varphi\><around*|(|x,t|)><around*|[|r<rsup|\<ast\>><around*|(|x,y|)>-r<around*|(|y,x|)>|]>\<varphi\><rsup|\<ast\>><around*|(|y,t|)>=0.
  </equation*>

  Since <math|\<varphi\>> is arbitrary, we obtain

  <\equation>
    r<rsup|\<ast\>><around*|(|x,y|)>=r<around*|(|y,x|)>.
  </equation>

  That is, complex conjugating <math|r> is simply swapping its arguments. We
  call such function <strong|Hermitian>. The two arguments of <math|r> are
  not independent.

  Probability interpretation (axiom <reference|axiom:prob>), together with
  superposition principle (axiom <reference|axiom:sup>), is the direct result
  of the double-slit experiment of electron. Details can be found in
  Feynman's Lectures on Physics, Vol 3, chapter 1.

  <section|Wavefunction Is Entire Schwartz Function>

  Before calculations, we first address where wavefunctions live. Probability
  interpretation (axiom <reference|axiom:prob>) demands that wavefunctions
  are square-integrable. Namely, wavefunction is in the square-integrable
  space <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>. But this is far from
  sufficient. Many mathematical tools are essential for evaluating quantum
  mechanics. Two of the many are Fourier transform and Taylor series.

  It is <hlink|well known|https://en.wikipedia.org/wiki/Fourier_transform>,
  however, that the Fourier transform of a square-integrable function may not
  be square-integrable again, so that its inverse Fourier transform may not
  exist. Since Fourier transform is basic in quantum mechanics, we shall seek
  for a smaller space in which wavefunctions live. An ideal substitution is
  the (complex) Schwartz space. A <strong|Schwartz space>
  <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>> contains smooth function
  <math|f:\<bbb-R\><rsup|d>\<rightarrow\>\<bbb-C\>> that decays
  \Pexponentially fast\Q at infinity. Precisely, for any <math|m>-order
  polynomial <math|P<rsub|m>> and any <math|m>-order partial derivative
  <math|\<partial\><rsup|n>>,<\footnote>
    For example, <math|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><rsup|2>>
    is <math|3>-order partial derivative, and
    <math|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><rsup|2>\<partial\><rsub|\<gamma\>><rsup|9>>
    is <math|12>-order.
  </footnote> with integers <math|m,n\<geqslant\>0>, we have

  <\equation*>
    lim<rsub|<around*|\<\|\|\>|x|\<\|\|\>>\<rightarrow\>\<infty\>><around*|\||P<rsub|m><around*|(|x|)>\<partial\><rsup|n>f<around*|(|x|)>|\|>=0.
  </equation*>

  Functions in Schwartz space are usually termed as <strong|Schwartz
  function>s. Fourier transform is an automorphism on Schwartz space. A
  function that is <em|everywhere> consistent with its Taylor series is
  <strong|entire> (shall not confuse with the entire function in complex
  analysis, where the domain is complex space). It indicates that we shall
  further restrict the space of wavefunctions to <strong|entire Schwartz
  space>, denoted by <math|\<cal-S\><rsub|E><around*|(|\<bbb-R\><rsup|d>|)>>,
  which collects all the entire functions in Schwartz space
  <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>.

  For example, in traditional textures, solving the stationary
  Schr<wide|o|\<ddot\>>dinger's equation of one-dimensional harmonic
  oscillator needs the expansion of wavefunction

  <\equation*>
    \<varphi\><around*|(|x|)>=exp<around*|(|-x<rsup|2>|)>
    <around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>x<rsup|n>|]>,
  </equation*>

  where the coefficients <math|<around*|(|a<rsub|0>,a<rsub|1>,\<ldots\>|)>>
  are to be determined. The factor <math|exp<around*|(|-x<rsup|2>|)>> is
  employed for an exponentially fast decay as
  <math|<around*|\||x|\|>\<rightarrow\>\<infty\>> (thus <math|\<varphi\>> is
  a Schwartz function). And the factor <math|<around*|[|\<cdots\>|]>> is a
  Taylor series. Hence, <math|f> is an entire function in Schwartz space. The
  energy quantization emerges for ensuring the convergence of the series
  <math|<big|sum><rsub|n>a<rsub|n>x<rsup|n>>.

  Entire Schwartz functions are dense in square-integrable space, meaning
  that for any <math|f\<in\>L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>> and any
  <math|\<varepsilon\>\<gtr\>0>, there is a
  <math|g\<in\>\<cal-S\><rsub|E><around*|(|\<bbb-R\><rsup|d>|)>> such that

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    <around*|\||f<around*|(|x|)>-g<around*|(|x|)>|\|><rsup|2>\<less\>\<varepsilon\>.
  </equation*>

  For example, for any wavefunction <math|f\<in\>L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>,
  when we measure the probability on any area of positions
  <math|U\<subset\>\<bbb-R\><rsup|d>>, we can use its approximation
  <math|g\<in\>\<cal-S\><rsub|E><around*|(|\<bbb-R\><rsup|d>|)>> instead,
  because the difference is bounded by

  <\equation*>
    <around*|\||<big|int><rsub|U>\<mathd\>x<around*|\||f<around*|(|x|)>|\|><rsup|2>-<big|int><rsub|U>\<mathd\>x<around*|\||g<around*|(|x|)>|\|><rsup|2>|\|>\<leqslant\><big|int><rsub|U>\<mathd\>x
    <around*|\||f<around*|(|x|)>-g<around*|(|x|)>|\|><rsup|2>\<leqslant\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    <around*|\||f<around*|(|x|)>-g<around*|(|x|)>|\|><rsup|2>\<less\>\<varepsilon\>.
  </equation*>

  The first inequality is equivalent to <math|<around*|\||<around*|\<\|\|\>|f|\<\|\|\>>-<around*|\<\|\|\>|g|\<\|\|\>>|\|>\<leqslant\><around*|\<\|\|\>|f-g|\<\|\|\>>>,
  where the norm is defined as <math|<around*|\<\|\|\>|f|\<\|\|\>>\<assign\><big|int><rsub|U>\<mathd\>x<around*|\||f<around*|(|x|)>|\|><rsup|2>>,
  recognized as the <math|L<rsup|2>>-norm on <math|U>. It states that the
  difference between the two sides of a triangle is less than that of the
  third side. It is in this sense that the substitution
  <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>\<rightarrow\>\<cal-S\><rsub|E><around*|(|\<bbb-R\><rsup|d>|)>>
  is plausible. Proof of the statement that entire Schwartz functions are
  dense in square-integrable space is given in appendices
  <reference|appendix:schwartz-dense> and
  <reference|appendix:analytic-dense>.

  <section|Kernel Is Entire Schwartz Function Too (TODO)>

  We can apply the previous discussion to the kernel <math|r>. First, we
  claim that <math|r<around*|(|x,\<cdummy\>|)>> is square-integratable
  function.

  <section|Path Integral Formalism>

  We are trying to derive a generic path integral formalism. Given a small
  <math|\<Delta\>t\<gtr\>0>, equation <reference|equ:superposition> gives

  <\equation*>
    \<varphi\><around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y<around*|[|\<delta\><around*|(|x-y|)>-\<mathi\>
    r<around*|(|x,y|)>\<Delta\>t|]> \<varphi\><around*|(|y,t-\<Delta\>t|)>+\<omicron\><around*|(|\<Delta\>t|)>
  </equation*>

  We are to convert the <math|<around*|[|\<cdots\>|]>> part into exponential.
  To do so, we take the inverse Fourier transform

  <\equation*>
    \<delta\><around*|(|x-y|)>=<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)>,
  </equation*>

  and

  <\equation>
    r<around*|(|x,y|)>=<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)>
    <wide|r|^><around*|(|x,k|)>,<label|eq:r-fourier>
  </equation>

  in which<\footnote>
    Indeed, by inserting equation <reference|eq:hamiltonian> into equation
    <reference|eq:r-fourier>, we get

    <\equation*>
      r<around*|(|x,y|)>=<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
      exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)>\<times\><around*|[|<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y<rprime|'>
      exp<around*|(|-\<mathi\>k<around*|(|x-y<rprime|'>|)>|)>
      r<around*|(|x,y<rprime|'>|)>|]>.
    </equation*>

    Re-arrange the right hand side as

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y<rprime|'>
      r<around*|(|x,y<rprime|'>|)><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
      exp<around*|(|\<mathi\>k<around*|(|y<rprime|'>-y|)>|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y<rprime|'>
      r<around*|(|x,y<rprime|'>|)>\<delta\><around*|(|y<rprime|'>-y|)>,
    </equation*>

    which goes back to <math|r<around*|(|x,y|)>>, indicating that equations
    <reference|eq:r-fourier> and <reference|eq:hamiltonian> are consistent.
  </footnote> <\footnote>
    We can also define

    <\equation*>
      <wide|r|^><rprime|'><around*|(|k,y|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
      exp<around*|(|-\<mathi\>k<around*|(|x-y|)>|)> r<around*|(|x,y|)>.
    </equation*>

    Thus,

    <\equation*>
      r<around*|(|x,y|)>=<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
      exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)><wide|r|^><rprime|'><around*|(|k,y|)>.
    </equation*>

    Indeed, by plugging <math|<wide|r|^><rprime|'><around*|(|k,y|)>> into the
    right hand side of <math|r<around*|(|x,y|)>>,

    <\equation*>
      r<around*|(|x,y|)>=<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
      exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)>\<times\><around*|[|<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rprime|'>
      exp<around*|(|-\<mathi\>k<around*|(|x<rprime|'>-y|)>|)>
      r<around*|(|x<rprime|'>,y|)>|]>.
    </equation*>

    Re-arrange the right hand side as

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rprime|'>
      r<around*|(|x<rprime|'>,y|)><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
      exp<around*|(|\<mathi\>k<around*|(|x-x<rprime|'>|)>|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rprime|'>
      r<around*|(|x<rprime|'>,y|)>\<delta\><around*|(|x-x<rprime|'>|)>,
    </equation*>

    which goes back to <math|r<around*|(|x,y|)>>. The
    <math|<wide|r|^><rprime|'>> and <math|<wide|r|^>> are the Fourier
    transform of <math|r> performed on each of its arguments respectively.
    But, because time evolution (equation <reference|equ:superposition>)
    integrates over the second argument, only <math|<wide|r|^>> is relevant
    to our task (as we will see in section <reference|section:Expanding
    Kernel as Generalized Function>).
  </footnote>

  <\equation>
    <wide|r|^><around*|(|x,k|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    exp<around*|(|-\<mathi\>k<around*|(|x-y|)>|)>
    r<around*|(|x,y|)>.<label|eq:hamiltonian>
  </equation>

  Then, the <math|<around*|[|\<cdots\>|]>> part is converted into exponential
  by

  <\align>
    <tformat|<table|<row|<cell|<around*|[|\<cdots\>|]>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)><around*|[|1-\<mathi\><wide|r|^><around*|(|x,k|)>\<Delta\>t|]>>>|<row|<cell|=>|<cell|<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<around*|(|x-y|)>-\<mathi\><wide|r|^><around*|(|x,k|)>\<Delta\>t|}>+\<omicron\><around*|(|\<Delta\>t|)>>>>>
  </align>

  Plugging back to <math|\<varphi\><around*|(|x,t|)> >results in

  <\equation*>
    \<varphi\><around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<around*|(|x-y|)>-\<mathi\><wide|r|^><around*|(|x,k|)>\<Delta\>t|}>\<varphi\><around*|(|y,t-\<Delta\>t|)>+\<omicron\><around*|(|\<Delta\>t|)>
  </equation*>

  After re-denoting <math|x<rsub|N>\<assign\>x>,
  <math|x<rsub|N-1>\<assign\>y>, <math|k<rsub|N>\<assign\>k>, it becomes

  <\equation*>
    \<varphi\><around*|(|x<rsub|N>,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rsub|N-1><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k<rsub|N>|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<rsub|N><around*|(|x<rsub|N>-x<rsub|N-1>|)>-\<mathi\><wide|r|^><around*|(|x<rsub|N>,k<rsub|N>|)>\<Delta\>t|}>
    \<varphi\><around*|(|x<rsub|N-1>,t-\<Delta\>t|)>+\<omicron\><around*|(|\<Delta\>t|)>.
  </equation*>

  Recursively applying to the rightmost <math|\<varphi\>> factor (for
  example, the next step is applying to the
  <math|\<varphi\><around*|(|x<rsub|N-1>,t|)>> factor) <math|N> times, we
  arrive at

  <\equation>
    \<varphi\><around*|(|x<rsub|N>,t|)>=<big|int>D<around*|(|x,k|)>
    exp<around*|(|\<mathi\>S<around*|(|x,k|)>|)>\<varphi\><around*|(|x<rsub|0>,t-N\<Delta\>t|)>+\<omicron\><around*|(|\<Delta\>t|)>,<label|eq:pathint>
  </equation>

  where the integral

  <\equation>
    <big|int>D<around*|(|x,k|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rsub|N-1><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k<rsub|N>|<around*|(|2\<mathpi\>|)><rsup|d>>*\<cdots\>*<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rsub|0><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k<rsub|1>|<around*|(|2\<mathpi\>|)><rsup|d>>
  </equation>

  and

  <\equation>
    S<around*|(|k,x|)>\<assign\><big|sum><rsub|i=1><rsup|N>\<Delta\>t<around*|[|k<rsub|i><around*|(|<frac|x<rsub|i>-x<rsub|i-1>|\<Delta\>t>|)>-<wide|r|^><around*|(|x<rsub|i>,k<rsub|i>|)>|]>.<label|eq:action>
  </equation>

  If we recognize <math|<around*|(|x<rsub|i>-x<rsub|i-1>|)>/\<Delta\>t> as
  the velocity <math|<wide|x|\<dot\>><rsub|i>>, then the
  <math|S<around*|(|x,k|)>> can be seen as the Legendre transform
  <math|<wide|x|\<dot\>>p-H<around*|(|x,p|)>>, in which <with|color|dark
  green|<em|<math|k> is analogy to momentum <math|p> and
  <math|<wide|r|^><around*|(|x,k|)>> plays the role of Hamiltonian
  <math|H<around*|(|x,p|)>>>>.

  <section|Expanding Kernel as Generalized Function><label|section:Expanding
  Kernel as Generalized Function>

  Given any \Ptest function\Q <math|\<varphi\>\<in\>\<cal-S\><rsub|E><around*|(|\<bbb-R\><rsup|d>|)>>,
  Taylor expanding <math|\<varphi\>> at <math|x> makes

  <\equation*>
    <big|int>\<mathd\>y r<around*|(|x,y|)>\<varphi\><around*|(|y|)>=<big|int>\<mathd\>y
    r<around*|(|x,y|)><around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<partial\><rsup|n><rsub|\<alpha\>>\<varphi\><around*|(|x|)><around*|(|y-x|)><rsup|\<alpha\>>|]>,
  </equation*>

  where <math|\<alpha\>\<assign\><around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>
  and <math|<around*|(|y-x|)><rsup|\<alpha\>>\<assign\><around*|(|y-x|)><rsup|\<alpha\><rsub|1>>\<cdots\><around*|(|y-x|)><rsup|\<alpha\><rsub|n>>>
  (recall the abbreviations). It is then re-arranged to

  <\equation*>
    <big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<partial\><rsup|n><rsub|\<alpha\>>\<varphi\><around*|(|x|)><big|int>\<mathd\>y
    r<around*|(|x,y|)><around*|(|y-x|)><rsup|\<alpha\>>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!>\<partial\><rsup|n><rsub|\<alpha\>>\<varphi\><around*|(|x|)><big|int>\<mathd\>y
    r<around*|(|x,y|)><around*|(|x-y|)><rsup|\<alpha\>>.
  </equation*>

  Define the <strong|moment>

  <\equation>
    R<rsub|n><rsup|\<alpha\>><around*|(|x|)>\<assign\><big|int>\<mathd\>y
    r<around*|(|x,y|)><around*|(|x-y|)><rsup|\<alpha\>>.<label|eq:moment>
  </equation>

  Then, it becomes

  <\equation*>
    <big|int>\<mathd\>y r<around*|(|x,y|)>\<varphi\><around*|(|y|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!>R<rsub|n><rsup|\<alpha\>><around*|(|x|)>\<partial\><rsup|n><rsub|\<alpha\>>\<varphi\><around*|(|x|)>.
  </equation*>

  Inserting the identity

  <\equation*>
    \<partial\><rsup|n><rsub|\<alpha\>>\<varphi\><around*|(|x|)>=<big|int>\<mathd\>y
    \<delta\><around*|(|x-y|)>\<partial\><rsup|n><rsub|\<alpha\>>\<varphi\><around*|(|y|)>
  </equation*>

  to the right hand side gives

  <\equation*>
    <big|int>\<mathd\>y r<around*|(|x,y|)>\<varphi\><around*|(|y|)>=<big|int>\<mathd\>y
    <big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!>R<rsub|n><rsup|\<alpha\>><around*|(|x|)>\<delta\><around*|(|x-y|)>\<partial\><rsup|n><rsub|\<alpha\>>\<varphi\><around*|(|y|)>.
  </equation*>

  By integration by parts and noticing the parity of
  <math|\<partial\><rsup|n>\<delta\>> (it is odd when <math|n> is odd, and
  even when <math|n> is even), we get

  <\equation*>
    <big|int>\<mathd\>y r<around*|(|x,y|)>\<varphi\><around*|(|y|)>=<big|int>\<mathd\>y
    <big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!>R<rsub|n><rsup|\<alpha\>><around*|(|x|)>\<partial\><rsup|n><rsub|\<alpha\>>\<delta\><around*|(|x-y|)>\<varphi\><around*|(|y|)>.
  </equation*>

  Since <math|\<varphi\>> is arbitrary, we get

  <\equation>
    r<around*|(|x,y|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!>R<rsub|n><rsup|\<alpha\>><around*|(|x|)>\<partial\><rsup|n><rsub|\<alpha\>>\<delta\><around*|(|x-y|)>.<label|eq:transexp>
  </equation>

  <with|color|dark green|<em|It shall be read as a formal expansion, or an
  \Palgorithm\Q (with which we obtain a valid expression of
  <math|<big|int>\<mathd\>x f<around*|(|x|)>\<varphi\><around*|(|x|)>>). Only
  by applying to an entire Schwartz function can it make sense.>> It claims
  that the kernel <math|r>, thus the time evolution of wavefunction (equation
  <reference|equ:superposition>), is completely determined by the moments
  <math|R<rsub|n>>s.

  Plugging equation <reference|eq:transexp> back to equation
  <reference|equ:superposition> gives

  <\equation*>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    R<rsub|n><rsup|\<alpha\>><around*|(|x|)>\<partial\><rsup|n><rsub|\<alpha\>>\<delta\><around*|(|x-y|)>\<varphi\><around*|(|y,t|)>.
  </equation*>

  Then, after integration by parts and applying the parity of
  <math|\<partial\><rsup|n>\<delta\>>, we integrate over <math|y>, resulting
  in

  <\equation>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!>
    \<partial\><rsub|\<alpha\>><rsup|n><around*|[|R<rsub|n><rsup|\<alpha\>><around*|(|x|)>\<varphi\><around*|(|x,t|)>|]>.<label|eq:kmanalogy>
  </equation>

  This is a quantum analogy to the Kramers-Moyal expansion in stochastic
  process.

  Interestingly, the Taylor expansion of the \PHamiltonian\Q
  <math|<wide|r|^><around*|(|x,k|)>>, defined by equation
  <reference|eq:hamiltonian>, also relates to the moments <math|R<rsub|n>>s.
  Directly by equation <reference|eq:hamiltonian>, we have

  <\equation*>
    <frac|\<partial\><rsup|n><wide|r|^>|\<partial\>k<rsub|\<alpha\>>><around*|(|x,0|)>=lim<rsub|k\<rightarrow\>0><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    \ <around*|[|<frac|\<partial\><rsup|n>|\<partial\>k<rsub|\<alpha\>>>exp<around*|(|-\<mathi\>k<around*|(|x-y|)>|)>|]>
    r<around*|(|x,y|)>=<around*|(|-\<mathi\>|)><rsup|n><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    \ r<around*|(|x,y|)><around*|(|x-y|)><rsup|\<alpha\>>.
  </equation*>

  The integral is recognized as <math|R<rsub|n><rsup|\<alpha\>><around*|(|x|)>>.
  So, we find <math|<around*|(|-\<mathi\>|)><rsup|n>R<rsub|n><rsup|\<alpha\>><around*|(|x|)>>s
  the Taylor coefficients of <math|<wide|r|^><around*|(|x,k|)>> expanded by
  <math|k> at its origin. Namely,

  <\equation>
    <wide|r|^><around*|(|x,k|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|n>|n!>R<rsup|\<alpha\>><rsub|n><around*|(|x|)>k<rsub|\<alpha\>>,<label|eq:momentexpansion>
  </equation>

  where <math|k<rsub|\<alpha\>>\<assign\><around*|(|k<rsub|\<alpha\><rsub|1>>\<cdots\>k<rsub|\<alpha\><rsub|n>>|)>>.
  Again, the details of <math|S<around*|(|x,k|)>> can be completely
  determined by the moments <math|R<rsub|n>>s.

  So, consider the traditional Hamiltonian
  <math|<wide|r|^><around*|(|x,p|)>=p<rsup|2>/<around*|(|2m|)>+V<around*|(|x|)>>,
  all <math|R<rsub|n>>s vanish except for
  <math|R<rsub|0><around*|(|x|)>=V<around*|(|x|)>> and
  <math|R<rsub|2><around*|(|x|)>=-1/m>. Equation <reference|eq:transexp>
  implies

  <\equation*>
    r<around*|(|x,y|)>=V<around*|(|x|)>\<delta\><around*|(|y-x|)>-<frac|1|2m>\<nabla\><rsup|2>\<delta\><around*|(|y-x|)>.
  </equation*>

  Then equation <reference|equ:superposition> becomes (after integration by
  parts and omitting the boundary term)

  <\equation*>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<bbb-R\>>\<mathd\>y
    \<varphi\><around*|(|y,t|)><around*|[|V<around*|(|x|)>\<delta\><around*|(|y-x|)>-<frac|1|2m>\<nabla\><rsup|2>\<delta\><around*|(|y-x|)>|]>=-<frac|1|2m>\<nabla\><rsup|2>\<varphi\><around*|(|x,t|)>+V<around*|(|x|)>\<varphi\><around*|(|x,t|)>,
  </equation*>

  which is exactly the Schr<wide|o|\<ddot\>>dinger equation (in the natural
  units where Planck's constant <math|\<hbar\>=1>).

  <section|Locality Truncates the Moments>

  We then introduce the third axiom about locality, and discuss what it will
  induce.

  <\axiom>
    [Locality]<label|axiom:local> Time evolution of quantum system is local.
  </axiom>

  Shall not confuse time evolution with collapse, which is proven to be
  non-local. Axiom <reference|axiom:local> claims that equation
  <reference|equ:superposition> is local. To make this clear, we consider an
  example, in which <math|R<rsub|n><around*|(|x|)>=c<rsup|n>> for some
  constant <math|c>, and set the dimension <math|d=1> for simplicity. Then,
  time evolution (equation <reference|eq:kmanalogy>) at <math|x=0> is

  <\equation*>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|0,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-c|)><rsup|n>|n!>
    <frac|\<partial\><rsup|n>\<varphi\>|\<partial\>x<rsup|n>><around*|(|0,t|)>.
  </equation*>

  The last expression happens to be the Taylor series of
  <math|\<varphi\><around*|(|x,t|)>> at <math|x=-c>, namely
  <math|\<varphi\><around*|(|-c,t|)>>. So, we conclude that
  <math|R<rsub|n><around*|(|x|)>=c<rsup|n>> for some constant <math|c>
  implies

  <\equation*>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|0,t|)>=\<varphi\><around*|(|-c,t|)>.
  </equation*>

  If we change the value of <math|\<varphi\>> at <math|x=-c>, then the time
  evolution at <math|x=0> changes accordingly. It means non-locality.

  In physics, a local equation generally refers to an operation on
  <math|\<varphi\>> which contains <math|\<varphi\>> itself and <em|finite>
  number of spatial derivatives of <math|\<varphi\>>, such as

  <\equation*>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=\<cal-L\><around*|(|\<varphi\><around*|(|x,t|)>,<frac|\<partial\>\<varphi\>|\<partial\>x><around*|(|x,t|)>,<frac|\<partial\><rsup|2>\<varphi\>|\<partial\>x<rsup|2>><around*|(|x,t|)>,\<ldots\>,<frac|\<partial\><rsup|n>\<varphi\>|\<partial\>x<rsup|n>><around*|(|x,t|)>|)>,
  </equation*>

  where <math|\<cal-L\>> is an entire function. This is easy to understand
  because to compute <math|<around*|(|\<partial\><rsup|n>\<varphi\>/\<partial\>x<rsup|n>|)><around*|(|0,t|)>>
  using numerical method with difference <math|\<Delta\>x>, only
  <math|\<varphi\><around*|(|x,t|)>> with
  <math|x\<in\><around*|{|0,\<Delta\>x,\<ldots\>,n\<Delta\>x|}>> are
  employed.<\footnote>
    Given a smooth function <math|f>, numerically evaluating
    <math|f<rsup|<around*|(|n|)>><around*|(|0|)>> needs
    <math|f<rsup|<around*|(|n-1|)>><around*|(|0|)>> and
    <math|f<rsup|<around*|(|n-1|)>><around*|(|\<Delta\>x|)>>. Recursively,
    numerically evaluating <math|f<rsup|<around*|(|n-1|)>><around*|(|0|)>>
    needs <math|f<rsup|<around*|(|n-2|)>><around*|(|0|)>> and
    <math|f<rsup|<around*|(|n-2|)>><around*|(|\<Delta\>x|)>>, and
    <math|f<rsup|<around*|(|n-1|)>><around*|(|\<Delta\>x|)>> needs
    <math|f<rsup|<around*|(|n-2|)>><around*|(|\<Delta\>x|)>> and
    <math|f<rsup|<around*|(|n-2|)>><around*|(|2\<Delta\>x|)>>. Repeating this
    process, we find <math|<around*|{|f<around*|(|0|)>,\<ldots\>,f<around*|(|n\<Delta\>x|)>|}>>
    are needed for evaluating <math|f<rsup|<around*|(|n|)>><around*|(|0|)>>.
  </footnote> So, <math|<around*|(|\<partial\>\<varphi\>/\<partial\>t|)><around*|(|0,t|)>>
  cannot \Pperceive\Q the <math|\<varphi\><around*|(|x,t|)>> outside the
  neighborhood <math|<around*|{|x:<around*|\||x|\|>\<leqslant\>n\<Delta\>x|}>>.
  Since <math|\<Delta\>x> can be arbitrarily small (but not vanishing), the
  equation is local.

  We have shown that, with a cut-off <math|N<rsub|cut>> on <math|R<rsub|n>>s
  such that <math|R<rsub|n>=0> for any <math|n\<gtr\>N<rsub|cut>>, time
  evolution of wavefunction is local. And without such a cut-off, we can
  construct a sequence of <math|R<rsub|n>>s such that time evolution is not
  local. Now, we are to prove that, generally, without a cut-off, any
  sequence of <math|R<rsub|n>>s (such that for any <math|N\<gtr\>0>, there
  are infinite many <math|R<rsub|n>>s that are not vanishing), time evolution
  of wavefunction is non-local. This then imports a cut-off on moments.

  Before proving, we first declare a property of entire function. Consider
  the Taylor expansion of <math|\<varphi\>\<in\>\<cal-S\><rsub|E><around*|(|\<bbb-R\>|)>>
  at origin

  <\equation*>
    \<varphi\><around*|(|x|)>=a<rsub|0>+a<rsub|1>x+a<rsub|2>x<rsup|2>+\<cdots\>.
  </equation*>

  The information of <math|\<varphi\>> is completely encoded in the infinite
  sequence of <math|a<rsub|n>>s. This is the result of a theorem which claims
  that two entire functions are equal if they agree in any interval (hence we
  can obtain the Taylor series of the function within the interval). What if
  we only know a portion of the infinite sequence of <math|a<rsub|n>>s? For
  example, if we only know the <math|a<rsub|0>>, then only the value of
  <math|\<varphi\><around*|(|x|)>> at <math|x=0> is determined. Further, if
  we also know the <math|a<rsub|1>>, then we can give a good approximation to
  <math|\<varphi\><around*|(|x|)>> in a very tiny neighborhood at <math|x=0>,
  since <math|\<varphi\><around*|(|x|)>=a<rsub|0>+a<rsub|1>x+\<omicron\><around*|(|x<rsup|2>|)>>.
  Then, if we additionally know the <math|a<rsub|2>>, then the approximation
  becomes as good as before in a larger neighborhood at <math|x=0>, since
  <math|\<varphi\><around*|(|x|)>=a<rsub|0>+a<rsub|1>x+a<rsub|2>x<rsup|2>+\<omicron\><around*|(|x<rsup|3>|)>>
  and the size of neighborhood can increase a little without growing the
  scale of residue. This analysis indicates that the more <math|a<rsub|n>>s
  we know, in a larger neighborhood at <math|x=0> can we properly approximate
  <math|\<varphi\><around*|(|x|)>>. Our vision becomes border and border if
  we know more and more <math|a<rsub|n>>s. Until knowing the whole sequence
  of <math|a<rsub|n>>s, we realize the complete picture of
  <math|\<varphi\><around*|(|x|)>> (based on the previous theorem about
  entire function).

  It also indicates that, for a sufficient large <math|N>, we can keep
  <math|\<varphi\><around*|(|x|)>> (approximately) invariant when we tune the
  <math|a<rsub|n>>s with <math|n\<gtr\>N> while keeping the other
  <math|a<rsub|n>>s unchanged. On the other hand, based on the equation
  (plugging <math|\<varphi\><around*|(|x|)>=<big|sum><rsub|n>a<rsub|n>x<rsup|n>>
  into equation <reference|eq:kmanalogy>, and collecting all <math|a<rsub|m>>
  terms with <math|m\<less\>n> into <math|<around*|[|\<cdots\>|]>>),

  <\equation*>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|0,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><around*|{|<around*|[|\<cdots\>|]>+<around*|(|-1|)><rsup|n>R<rsub|n><around*|(|0|)>a<rsub|n>|}>,
  </equation*>

  if there is not a cut-off to the infinite sequence of
  <math|R<rsub|n><around*|(|0|)>>s, we can modify the
  <math|<around*|(|\<partial\>\<varphi\>/\<partial\>t|)><around*|(|0,t|)>> by
  tuning an <math|a<rsub|n>> where <math|n> can be arbitrarily large. This,
  however, will leave the <math|\<varphi\><around*|(|x|)>> around <math|x=0>
  invariant. It means that the value of <math|\<varphi\>> with <math|x> far
  away from <math|x=0> can affect the time evolution of <math|\<varphi\>> at
  <math|x=0>. That is, time evolution of wavefunction is non-local. Hence,
  there must be a cut-off on the sequence of
  <math|R<rsub|n><around*|(|0|)>>s. This discussion also holds for any value
  of <math|x> other than <math|x=0>. We conclude that <with|color|dark
  green|<em|time evolution is local if and only if there is a positive
  integer <math|N<rsub|cut>> such that <math|R<rsub|n>=0> for any
  <math|n\<gtr\>N<rsub|cut>>>>.

  <section|Hermitianity on the Moments of Transition
  Rate><label|section:Hermitianity on Moments>

  Now we study the relation between <math|R<rsub|n>>s and their complex
  conjugations. By conjugating equation <reference|eq:hamiltonian> and
  applying the Hermitianity of <math|r>, we get

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|x,k|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)> r<around*|(|y,x|)>.
  </equation*>

  Then, applying equation <reference|eq:r-fourier> to
  <math|r<around*|(|y,x|)>> gives

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|x,k|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>k<rprime|'><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>y|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\><around*|(|k-k<rprime|'>|)><around*|(|x-y|)>|}>
    <wide|r|^><around*|(|y,k<rprime|'>|)>.
  </equation*>

  Taylor expanding <math|><math|<wide|r|^><around*|(|y,k<rprime|'>|)>> by
  <math|y> at <math|x>,

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|x,k|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>k<rprime|'><frac|\<partial\><rsup|n><wide|r|^>|\<partial\>x<rsup|\<alpha\>>><around*|(|x,k<rprime|'>|)>\<times\><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>y|<around*|(|2\<mathpi\>|)><rsup|d>>
    \ exp<around*|{|\<mathi\><around*|(|k-k<rprime|'>|)><around*|(|x-y|)>|}><around*|(|y-x|)><rsup|\<alpha\>>.
  </equation*>

  Noticing that

  <\equation*>
    <frac|\<partial\><rsup|n>\<delta\>|\<partial\>k<rprime|'><rsub|\<alpha\>>><around*|(|k<rprime|'>-k|)>=<frac|\<partial\><rsup|n>|\<partial\>k<rprime|'><rsub|\<alpha\>>><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>y|<around*|(|2\<mathpi\>|)><rsup|d>>
    \ exp<around*|{|\<mathi\><around*|(|k<rprime|'>-k|)><around*|(|y-x|)>|}>=\<mathi\><rsup|n><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>y|<around*|(|2\<mathpi\>|)><rsup|d>>
    \ exp<around*|{|\<mathi\><around*|(|k<rprime|'>-k|)><around*|(|y-x|)>|}><around*|(|y-x|)><rsup|\<alpha\>>.
  </equation*>

  the last integral in <math|<wide|r|^><rsup|\<ast\>><around*|(|x,k|)>> is
  evaluated to be <math|<around*|(|-\<mathi\>|)><rsup|n>\<partial\><rsup|n><rsub|\<alpha\>>\<delta\><around*|(|k<rprime|'>-k|)>>.
  Thus,

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|x,k|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|n>|n!><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>k<rprime|'><frac|\<partial\><rsup|n><wide|r|^>|\<partial\>x<rsup|\<alpha\>>><around*|(|x,k<rprime|'>|)><frac|\<partial\><rsup|n>\<delta\>|\<partial\>k<rprime|'><rsub|\<alpha\>>><around*|(|k<rprime|'>-k|)>.
  </equation*>

  Then, by integration by parts and then integrating over <math|k<rprime|'>>,
  we arrive at

  <\equation>
    <wide|r|^><rsup|\<ast\>><around*|(|x,k|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|\<mathi\><rsup|n>|n!><frac|\<partial\><rsup|2n><wide|r|^>|\<partial\>x<rsup|\<alpha\>>\<partial\>k<rsub|\<alpha\>>><around*|(|x,k|)>.
  </equation>

  Since <math|<around*|(|-\<mathi\>|)><rsup|n>R<rsub|n><around*|(|x|)>>s are
  the coefficients of Taylor expansion of <math|<wide|r|^><around*|(|x,k|)>>
  by <math|k> (equation <reference|eq:momentexpansion>), we find

  <\align>
    <tformat|<table|<row|<cell|<around*|(|R<rsup|\<alpha\>><rsub|m>|)><rsup|\<ast\>><around*|(|x|)>=>|<cell|<around*|(|-\<mathi\>|)><rsup|m><frac|\<partial\><rsup|m><wide|r|^><rsup|\<ast\>>|\<partial\>k<rsub|\<alpha\>>><around*|(|x,0|)>>>|<row|<cell|=>|<cell|<around*|(|-\<mathi\>|)><rsup|m><big|sum><rsub|n=0><rsup|\<infty\>><frac|\<mathi\><rsup|n>|n!><frac|\<partial\><rsup|n>|\<partial\>x<rsup|\<beta\>>><frac|\<partial\><rsup|m+n><wide|r|^>|\<partial\>k<rsub|\<alpha\>>\<partial\>k<rsub|\<beta\>>><around*|(|x,0|)>>>|<row|<cell|=>|<cell|<around*|(|-\<mathi\>|)><rsup|m><big|sum><rsub|n=0><rsup|\<infty\>><frac|\<mathi\><rsup|n>|n!><frac|\<partial\><rsup|n>|\<partial\>x<rsup|\<beta\>>><around*|[|<around*|(|-\<mathi\>|)><rsup|m+n>R<rsup|\<alpha\>\<beta\>><rsub|m+n><around*|(|x|)>|]>>>|<row|<cell|=>|<cell|<around*|(|-1|)><rsup|m><big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<partial\><rsup|n><rsub|\<beta\>>R<rsup|\<alpha\>\<beta\>><rsub|m+n><around*|(|x|)>.>>>>
  </align>

  Recall that <math|R<rsub|n>=0> for any <math|n\<gtr\>N<rsub|cut>>, we
  finally get

  <\equation>
    <around*|(|R<rsup|\<alpha\>><rsub|m>|)><rsup|\<ast\>><around*|(|x|)>=<around*|(|-1|)><rsup|m><big|sum><rsub|n=0><rsup|N<rsub|cut>-m><frac|1|n!>\<partial\><rsup|n><rsub|\<beta\>>R<rsup|\<alpha\>\<beta\>><rsub|m+n><around*|(|x|)>.
  </equation>

  For example, when <math|N<rsub|cut>=2>, we have

  <\equation*>
    R<rsub|0><rsup|\<ast\>><around*|(|x|)>=R<rsub|0><around*|(|x|)>+\<partial\><rsub|\<alpha\>>R<rsup|\<alpha\>><rsub|1><around*|(|x|)>+<frac|1|2>\<partial\><rsup|2><rsub|\<alpha\>>R<rsup|\<alpha\>><rsub|2><around*|(|x|)>,
  </equation*>

  <\equation*>
    <around*|(|R<rsub|1><rsup|\<alpha\>>|)><rsup|*\<ast\>><around*|(|x|)>=-R<rsub|1><rsup|\<alpha\>><around*|(|x|)>-\<partial\><rsub|\<beta\>>R<rsup|\<alpha\>\<beta\>><rsub|2><around*|(|x|)>,
  </equation*>

  and

  <\equation*>
    <around*|(|R<rsub|2><rsup|\<alpha\>>|)><rsup|\<ast\>><around*|(|x|)>=R<rsup|\<alpha\>><rsub|2><around*|(|x|)>,
  </equation*>

  that is, <math|R<rsub|2>> is real. Specially, we have

  <\equation*>
    R<rsub|N<rsub|cut>><rsup|\<ast\>><around*|(|x|)>=<around*|(|-1|)><rsup|N<rsub|cut>>R<rsub|N<rsub|cut>><around*|(|x|)>.
  </equation*>

  That is, <math|R<rsub|N<rsub|cut>>> is real when <math|N<rsub|cut>> is
  even, otherwise purely imaginary.

  <section|Uncertainty Principle Restricts the Highest Order Moment>

  An <strong|observable> is a real function of the particle positions of a
  quantum system, such as <math|F:\<bbb-R\><rsup|d>\<rightarrow\>\<bbb-R\><rsup|n>>
  for some positive integer <math|n>. A corollary of axiom
  <reference|axiom:prob> is that, given a wavefunction <math|\<varphi\>> and
  an observable <math|F>, <math|<around*|\||\<varphi\><around*|(|x,t|)>|\|><rsup|2>>
  represents the probability density that the particles are found on
  positions <math|x> at time <math|t>, hence the observed value is the
  expectation

  <\equation>
    \<bbb-E\><rsub|\<varphi\>><around*|[|F|]><around*|(|t|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    <around*|\||\<varphi\><around*|(|x,t|)>|\|><rsup|2>F<around*|(|x|)>.
  </equation>

  And the variance

  <\equation>
    Var<rsub|\<varphi\>><around*|[|F|]><around*|(|t|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    <around*|\||\<varphi\><around*|(|x,t|)>|\|><rsup|2><around*|[|F<around*|(|x|)>-\<bbb-E\><rsub|\<varphi\>><around*|[|F|]><around*|(|t|)>|]><rsup|2>.
  </equation>

  \;

  For a single particle system, we use <math|X> to denote the position of the
  particle, thus a with <math|X<around*|(|x|)>=x>. The uncertainty of
  position is given by

  <\equation>
    \<Delta\>X<around*|(|t|)>\<assign\><sqrt|Var<rsub|\<varphi\>><around*|[|X|]><around*|(|t|)>>.
  </equation>

  Having observed the particle position at time <math|t> and
  <math|t+\<Delta\>t> subsequently, we can obtain the velocity of the
  particle

  <\equation>
    V<around*|(|t|)>\<assign\>lim<rsub|\<Delta\>t\<rightarrow\>0><frac|\<bbb-E\><rsub|\<varphi\>><around*|[|X|]><around*|(|t+\<Delta\>t|)>-\<bbb-E\><rsub|\<varphi\>><around*|[|X|]><around*|(|t|)>|\<Delta\>t>.
  </equation>

  The uncertainty of velocity is hard to determine, because of ends (particle
  positions at time <math|t> and <math|t+\<Delta\>t>) are uncertain. The key
  is fixing the position at time <math|t> by
  <math|\<bbb-E\><rsub|\<varphi\>><around*|[|X|]><around*|(|t|)>>, and
  measuring the uncertainty caused by the position at time
  <math|t+\<Delta\>t>, that is, <em|the uncertainty induced by time
  evolution>. Having considered thus, we have

  <\equation>
    \<Delta\>V<around*|(|t|)>\<assign\><sqrt|lim<rsub|\<Delta\>t\<rightarrow\>0>Var<rsub|\<varphi\>><around*|[|<frac|X-\<bbb-E\><rsub|\<varphi\>><around*|[|X|]><around*|(|t|)>|\<Delta\>t>|]><around*|(|t+\<Delta\>t|)>>.
  </equation>

  Have clarified the uncertainties of particle position and velocity, we can
  claim uncertainty principle as follow.

  <\axiom>
    [Uncertainty Principle of Single Particle]<label|axiom:uncert> In a
    single particle quantum system, given a wavefunction <math|\<varphi\>>,
    the uncertainties of position and of velocity have the relation

    <\equation*>
      \<Delta\>X<around*|(|t|)>\<Delta\>V<around*|(|t|)>\<sim\>\<hbar\>/<around*|(|2m|)>,
    </equation*>

    where <math|m> is the mass of the particle, and <math|\<hbar\>> is the
    reduced Planck's constant.
  </axiom>

  In the rest of this section, we investigate how uncertainty principle
  restricts further to the kernel. We first deal with the situation where
  dimension <math|d=1>. Since axiom <reference|axiom:uncert> holds for all
  wavefunctions of a single particle, we choose <math|\<varphi\>> to be
  Gaussian at <math|t=0>, that is

  <\equation>
    \<varphi\><around*|(|x,0|)>=<around*|(|2\<mathpi\>\<sigma\><rsup|2>|)><rsup|-1/4>
    exp<around*|(|-<frac|x<rsup|2>|4\<sigma\><rsup|2>>|)>.<label|eq:gaussianwavefunction>
  </equation>

  The coefficient guarantees the normalization of <math|\<varphi\>>. By axiom
  <reference|axiom:prob>, we have

  <\equation*>
    \<bbb-E\><rsub|\<varphi\>><around*|[|X|]><around*|(|0|)>\<assign\><big|int><rsub|\<bbb-R\>>\<mathd\>x
    \<varphi\><rsup|\<ast\>><around*|(|x,0|)>\<varphi\><around*|(|x,0|)>x=<frac|1|<sqrt|2\<mathpi\>\<sigma\><rsup|2>>><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    exp<around*|(|-<frac|x<rsup|2>|2\<sigma\><rsup|2>>|)>x=0,
  </equation*>

  then

  <\equation*>
    Var<rsub|\<varphi\>><around*|[|X|]><around*|(|0|)>\<assign\><big|int><rsub|\<bbb-R\>>\<mathd\>x
    \<varphi\><rsup|\<ast\>><around*|(|x,0|)>\<varphi\><around*|(|x,0|)>x<rsup|2>=<frac|1|<sqrt|2\<mathpi\>\<sigma\><rsup|2>>><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    exp<around*|(|-<frac|x<rsup|2>|2\<sigma\><rsup|2>>|)>x<rsup|2>=\<sigma\><rsup|2>.
  </equation*>

  Thus, <math|\<Delta\>X=<sqrt|Var<rsub|\<varphi\>><around*|[|X|]><around*|(|0|)>>=\<sigma\>>.

  To evaluate <math|\<Delta\>V<around*|(|0|)>>, we have to use time evolution
  equation to calculate <math|X> at time <math|\<Delta\>t>. By equation
  <reference|equ:superposition>, we have (for brevity, we omit the subscript
  <math|cut> in <math|N<rsub|cut>>)

  <\equation*>
    \<varphi\><around*|(|x,\<Delta\>t|)>=\<varphi\><around*|(|x,0|)>-\<mathi\>\<Delta\>t<big|sum><rsub|n=0><rsup|N><frac|<around*|(|-1|)><rsup|n>|n!>
    \<partial\><rsup|n><around*|[|R<rsub|n><around*|(|x|)>\<varphi\><around*|(|x,0|)>|]>-<frac|\<mathi\>|2>\<Delta\>t<rsup|2><big|sum><rsub|n=0><rsup|N><big|sum><rsub|n<rprime|'>=0><rsup|N>\<cdots\>.
  </equation*>

  We have to evaluate up to <math|\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>>,
  so as to give the variance of velocity which scales as
  <math|x<rsup|2><around*|(|\<Delta\>t|)>/\<Delta\>t<rsup|2>>. But this would
  be too complicated (the double summation). For simplification, we consider
  a \Pfree particle\Q where all <math|R<rsub|n>>s but the <math|R<rsub|N>>
  are vanishing. This is the situation when <math|\<sigma\>> tends to zero,
  because there are more <math|\<sigma\>> factors in the denominator if there
  are more derivatives on <math|f>, and as <math|\<sigma\>> tends to zero,
  the term proportional to <math|R<rsub|N><around*|(|x|)>\<partial\><rsup|N><around*|[|f<around*|(|x,0|)>|]>>
  surpasses all the other terms.<\footnote>
    In the traditional approach of quantum mechanics,
    <math|\<sigma\>\<rightarrow\>0> indicates that the momentum is large
    (since momentum is proportional to <math|\<partial\>/\<partial\>x>), so
    the term with the highest order of momentum will dominates the time
    evolution. When the momentum is large enough, the kinetic term dominates
    Hamiltonian, the potential becomes omittable, making the particle free
    (namely, unconstrained by potential).
  </footnote> In this situation, equation <reference|equ:superposition>
  reduces to

  <\equation*>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=<frac|<around*|(|-1|)><rsup|N>|N!>
    R<rsub|N><around*|(|x|)>\<partial\><rsup|N>\<varphi\><around*|(|x,t|)>.
  </equation*>

  Hence, up to <math|\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>> (we will
  see why <math|\<omicron\><around*|(|\<Delta\>t|)>> is insufficient),

  <\align>
    <tformat|<table|<row|<cell|\<varphi\><around*|(|x,\<Delta\>t|)>=>|<cell|\<varphi\><around*|(|x,0|)>+<frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,0|)>\<Delta\>t+<frac|1|2><frac|\<partial\><rsup|2>\<varphi\>|\<partial\>t<rsup|2>><around*|(|x,0|)>\<Delta\>t<rsup|2>+\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>>>|<row|<cell|=>|<cell|\<varphi\><around*|(|x,0|)>-\<mathi\><frac|<around*|(|-1|)><rsup|N>|N!>
    R<rsub|N><around*|(|x|)>\<partial\><rsup|N>\<varphi\><around*|(|x,0|)>\<Delta\>t-<frac|\<mathi\>|2><frac|<around*|(|-1|)><rsup|N>|N!>
    R<rsub|N><around*|(|x|)>\<partial\><rsup|N><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,0|)>\<Delta\>t<rsup|2>+\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>.>>>>
  </align>

  Inserting <math|<around*|(|\<partial\>\<varphi\>/\<partial\>t|)>> and
  considering the limit <math|\<sigma\>\<rightarrow\>0> again, we get\ 

  <\equation*>
    \<varphi\><around*|(|x,\<Delta\>t|)>=\<varphi\><around*|(|x,0|)>-\<mathi\><frac|<around*|(|-1|)><rsup|N>|N!>
    R<rsub|N><around*|(|x|)>\<partial\><rsup|N>\<varphi\><around*|(|x,0|)>\<Delta\>t-<frac|1|2><around*|[|<frac|<around*|(|-1|)><rsup|N>|N!>R<rsub|N><around*|(|x|)>|]><rsup|2>\<partial\><rsup|2N>\<varphi\><around*|(|x,0|)>\<Delta\>t<rsup|2>+\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>.
  </equation*>

  \;

  Having obtained <math|\<varphi\><around*|(|x,\<Delta\>t|)>>, now we
  evaluate <math|Var<rsub|\<varphi\>><around*|[|V|]><around*|(|0|)>>. First,
  we evaluate <math|V<around*|(|0|)>> as

  <\equation*>
    V<around*|(|0|)>=lim<rsub|\<Delta\>t\<rightarrow\>0>\<bbb-E\><rsub|\<varphi\>><around*|[|<frac|X-\<bbb-E\><rsub|\<varphi\>><around*|[|X|]><around*|(|0|)>|\<Delta\>t>|]><around*|(|\<Delta\>t|)>=lim<rsub|\<Delta\>t\<rightarrow\>0><frac|\<bbb-E\><rsub|\<varphi\>><around*|[|X|]><around*|(|\<Delta\>t|)>-\<bbb-E\><rsub|\<varphi\>><around*|[|X|]><around*|(|0|)>|\<Delta\>t>.
  </equation*>

  Directly inserting <math|\<varphi\><around*|(|x,\<Delta\>t|)>> results in

  <\align>
    <tformat|<table|<row|<cell|\<bbb-E\><rsub|\<varphi\>><around*|[|X|]><around*|(|\<Delta\>t|)>=>|<cell|<big|int><rsub|\<bbb-R\>>\<mathd\>x<around*|\||\<varphi\><around*|(|x,\<Delta\>t|)>|\|><rsup|2>x>>|<row|<cell|=>|<cell|\<bbb-E\><rsub|\<varphi\>><around*|[|X|]><around*|(|0|)>+\<mathi\><frac|<around*|(|-1|)><rsup|N>|N!><big|int><rsub|\<bbb-R\>>\<mathd\>x\<varphi\><around*|(|x,0|)>\<partial\><rsup|N>\<varphi\><around*|(|x,0|)><around*|[|R<rsup|\<ast\>><rsub|N><around*|(|x|)>-R<rsub|N><around*|(|x|)>|]>x\<Delta\>t+\<omicron\><around*|(|\<Delta\>t|)>.>>>>
  </align>

  Hence,

  <\equation*>
    V<around*|(|0|)>=\<mathi\><frac|<around*|(|-1|)><rsup|N>|N!><big|int><rsub|\<bbb-R\>>\<mathd\>x\<varphi\><around*|(|x,0|)>\<partial\><rsup|N>\<varphi\><around*|(|x,0|)><around*|[|R<rsup|\<ast\>><rsub|N><around*|(|x|)>-R<rsub|N><around*|(|x|)>|]>x.
  </equation*>

  When <math|N> is even, <math|R<rsub|N>> is real (see section
  <reference|section:Hermitianity on Moments>), we find
  <math|V<around*|(|0|)>=0>. But when <math|N> is odd, <math|R<rsub|N>> is
  purely imaginary. In this situation, denote
  <math|R<rsub|N><around*|(|x|)>=\<mathi\>A<around*|(|x|)>/2>, we get

  <\equation*>
    V<around*|(|0|)>=<frac|<around*|(|-1|)><rsup|N>|N!><big|int><rsub|\<bbb-R\>>\<mathd\>x
    \<varphi\><around*|(|x,0|)>\<partial\><rsup|N>\<varphi\><around*|(|x,0|)>A<around*|(|x|)>
    x,
  </equation*>

  which may not vanish, leading to a violation of parity symmetry, because
  the velocity has a favored direction even though the distribution (or
  wavefunction) has not. So, from now on, we only consider when <math|N> is
  even. For any random variable <math|R>, we have the formula

  <\equation*>
    Var<around*|[|R|]>=\<bbb-E\><around*|[|<around*|(|R-\<bbb-E\><around*|[|R|]>|)><rsup|2>|]>=\<bbb-E\><around*|[|R<rsup|2>-2\<bbb-E\><around*|[|R|]>R-\<bbb-E\><rsup|2><around*|[|R|]>|]>=\<bbb-E\><around*|[|R<rsup|2>|]>-\<bbb-E\><rsup|2><around*|[|R|]>.
  </equation*>

  Then, we find (recall that <math|\<bbb-E\><rsub|\<varphi\>><around*|[|X|]><around*|(|0|)>=V<around*|(|0|)>=0>
  when <math|N> is even)

  <\equation*>
    \<Delta\>V<rsup|2><around*|(|0|)>=lim<rsub|\<Delta\>t\<rightarrow\>0>\<bbb-E\><rsub|\<varphi\>><around*|[|<around*|(|<frac|X-\<bbb-E\><rsub|\<varphi\>><around*|[|X|]><around*|(|0|)>|\<Delta\>t>|)><rsup|2>|]><around*|(|\<Delta\>t|)>-V<rsup|2><around*|(|0|)>=lim<rsub|\<Delta\>t\<rightarrow\>0><frac|\<bbb-E\><rsub|\<varphi\>><around*|[|X<rsup|2>|]><around*|(|\<Delta\>t|)>|\<Delta\>t<rsup|2>>.
  </equation*>

  Since <math|R<rsub|N>> has been real, we have

  <\align>
    <tformat|<table|<row|<cell|\<bbb-E\><rsub|\<varphi\>><around*|[|X<rsup|2>|]><around*|(|\<Delta\>t|)>=>|<cell|<big|int><rsub|\<bbb-R\>>\<mathd\>x
    \<varphi\><rsup|\<ast\>><around*|(|x,\<Delta\>t|)>\<varphi\><around*|(|x,\<Delta\>t|)>x<rsup|2>>>|<row|<cell|=>|<cell|<around*|(|<frac|1|N!>|)><rsup|2><big|int><rsub|\<bbb-R\>>\<mathd\>x<around*|[|\<partial\><rsup|N>\<varphi\><around*|(|x,0|)>\<partial\><rsup|N>\<varphi\><around*|(|x,0|)>-<frac|1|2>\<varphi\><around*|(|x,0|)>\<partial\><rsup|2N>\<varphi\><around*|(|x,0|)>|]>R<rsub|N><rsup|2><around*|(|x|)>x<rsup|2>\<Delta\>t<rsup|2>+\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>.>>>>
  </align>

  So,

  <\equation*>
    \<Delta\>V<rsup|2><around*|(|0|)>=<around*|(|<frac|1|N!>|)><rsup|2><big|int><rsub|\<bbb-R\>>\<mathd\>x<around*|[|\<partial\><rsup|N>\<varphi\><around*|(|x,0|)>\<partial\><rsup|N>\<varphi\><around*|(|x,0|)>-<frac|1|2>\<varphi\><around*|(|x,0|)>\<partial\><rsup|2N>\<varphi\><around*|(|x,0|)>|]>R<rsub|N><rsup|2><around*|(|x|)>x<rsup|2>.
  </equation*>

  As we have expected, the terms that involve the partial derivatives of
  <math|\<varphi\>> share the same (highest) order of <math|1/\<sigma\>>,
  surpassing all the terms that we have neglected (which have lower order of
  <math|1/\<sigma\>>) as <math|\<sigma\>> tends to zero. Assume that
  <math|R<rsub|N>> is entire, so that we can Taylor expand
  <math|R<rsup|2><rsub|N>> at origin, as

  <\equation*>
    R<rsub|N><rsup|2><around*|(|x|)>=R<rsup|2><rsub|N><around*|(|0|)>+\<partial\>R<rsup|2><rsub|N><around*|(|0|)>x+<frac|1|2>\<partial\><rsup|2>R<rsup|2><rsub|N><around*|(|0|)>x<rsup|2>+\<cdots\>.
  </equation*>

  We arrive at

  <\equation>
    \<Delta\>V<rsup|2><around*|(|0|)>=<around*|(|<frac|1|N!>|)><rsup|2><big|sum><rsub|n=0><rsup|\<infty\>><frac|\<partial\><rsup|n>R<rsup|2><rsub|N><around*|(|0|)>|n!><big|int><rsub|\<bbb-R\>>\<mathd\>x<around*|[|\<partial\><rsup|N>\<varphi\><around*|(|x,0|)>\<partial\><rsup|N>\<varphi\><around*|(|x,0|)>-<frac|1|2>\<varphi\><around*|(|x,0|)>\<partial\><rsup|2N>\<varphi\><around*|(|x,0|)>|]>x<rsup|2+n>.<label|eq:deltavel>
  </equation>

  With the aid of computer, we evaluate the term in
  <math|\<Delta\>V<rsup|2><around*|(|0|)>> for each <math|N> and <math|n>
  (see appendix <reference|appendix:compute-uncert>. To satisfy uncertainty
  principle (axiom <reference|axiom:uncert>),
  <math|\<Delta\>V<rsup|2><around*|(|0|)>> shall be proportional to
  <math|1/\<sigma\><rsup|2>>, so that <math|\<Delta\>X\<Delta\>V> is
  independent of <math|\<sigma\>>. Such terms are found when
  <math|<around*|(|N,n|)>\<in\><around*|{|<around*|(|2,0|)>,<around*|(|4,4|)>,<around*|(|6,8|)>,<around*|(|8,12|)>,\<ldots\>|}>>,
  indicating a relation <math|n=4<around*|(|N/2-1|)>=2N-4>. So, we have
  <math|\<partial\><rsup|n>R<rsup|2><rsub|N><around*|(|0|)>=0> except for
  <math|n=2N-4>. In other words,

  <\equation>
    R<rsub|N><around*|(|x|)>\<propto\>x<rsup|N-2>.
  </equation>

  So, uncertainty principle restricts the highest order moment to be an
  explicit power function.

  The specific case is <math|N=2> in which <math|R<rsub|N>> becomes constant.
  This corresponds to the canonical situation in physics. To determine this
  constant, we have (set <math|N=2>, <math|n=0>)

  <\equation*>
    \<Delta\>V<around*|(|0|)>=<frac|<around*|\||R<rsub|2>|\|>|2><sqrt|<big|int><rsub|\<bbb-R\>>\<mathd\>x<around*|[|\<partial\><rsup|2>\<varphi\><around*|(|x,0|)>\<partial\><rsup|2>\<varphi\><around*|(|x,0|)>-<frac|1|2>\<varphi\><around*|(|x,0|)>\<partial\><rsup|4>\<varphi\><around*|(|x,0|)>|]>x<rsup|2>>=<frac|<around*|\||R<rsub|2>|\|>|2><sqrt|<frac|23|32
    \<sigma\><rsup|2>>>,
  </equation*>

  where the integral is evaluated by computer. Then, by uncertainty
  principle, <math|\<Delta\>X<around*|(|0|)>\<Delta\>V<around*|(|0|)>=<sqrt|23/32><around*|\||R<rsub|2>|\|>/2\<sim\>\<hbar\>/<around*|(|2m|)>>,
  implying

  <\equation>
    <around*|\||R<rsub|2>|\|>\<sim\><sqrt|<frac|32|23>><frac|\<hbar\>|m>\<approx\>1.18
    <frac|\<hbar\>|m>.
  </equation>

  This is consistent with the traditional Hamiltonian where
  <math|R<rsub|2>=-\<hbar\>/m>.

  We can generalize the previous analysis to dimension <math|d\<gtr\>1>, in
  which the covariance matrix of <math|f> is diagonal, such that all
  dimensions are independent. Namely,

  <\equation*>
    \<varphi\><around*|(|x,0|)>=<big|prod><rsub|\<alpha\>=1><rsup|d><around*|(|2\<mathpi\><around*|(|\<sigma\><rsup|\<alpha\>>|)><rsup|2>|)><rsup|-1/4>exp<around*|(|-<frac|1|4><around*|(|<frac|x<rsup|\<alpha\>>|\<sigma\><rsup|\<alpha\>>>|)><rsup|2>|)>.
  </equation*>

  The previous analysis, then, is taken on each dimension individually,
  resulting in exactly the same result for each dimension.

  <appendix|Taylor Reminder>

  Given a function <math|f\<in\>\<cal-C\><rsup|n><around*|(|\<bbb-R\><rsup|d>|)>>,
  we are to calculate the reminder <math|h<rsub|n><around*|(|x,x<rsub|0>|)>>
  in the Taylor expansion at <math|x<rsub|0>>

  <\equation*>
    f<around*|(|x|)>=f<around*|(|x<rsub|0>|)>+<big|sum><rsub|k=1><rsup|n><frac|1|k!><around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|k>>f|)><around*|(|x<rsub|0>|)><big|prod><rsub|i=1><rsup|k><around*|(|x<rsup|\<alpha\><rsub|i>>-x<rsub|0><rsup|\<alpha\><rsub|i>>|)>+h<rsub|n+1><around*|(|x,x<rsub|0>|)>.
  </equation*>

  We begin at a variation of the fundamental theorem of calculus

  <\equation*>
    f<around*|(|x|)>-f<around*|(|x<rsub|0>|)>=<big|int><rsub|0><rsup|1>\<mathd\>t
    <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>f|)><around*|(|x+t<around*|(|x<rsub|0>-x|)>|)><around*|(|x<rsup|\<alpha\><rsub|1>>-x<rsub|0><rsup|\<alpha\><rsub|1>>|)>.
  </equation*>

  Integration by parts gives

  <\equation*>
    f<around*|(|x|)>-f<around*|(|x<rsub|0>|)>=<around*|(|\<partial\><rsub|\<alpha\><rsub|1>>f|)><around*|(|x<rsub|0>|)><around*|(|x<rsup|\<alpha\><rsub|1>>-x<rsub|0><rsup|\<alpha\><rsub|1>>|)>+<frac|1|2><big|int><rsub|0><rsup|1>\<mathd\><around*|(|t<rsup|2>|)>
    <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<partial\><rsub|\<alpha\><rsub|2>>f|)><around*|(|x+t<around*|(|x<rsub|0>-x|)>|)><around*|(|x<rsup|\<alpha\><rsub|1>>-x<rsub|0><rsup|\<alpha\><rsub|1>>|)><around*|(|x<rsup|\<alpha\><rsub|2>>-x<rsub|0><rsup|\<alpha\><rsub|2>>|)>.
  </equation*>

  Applying integration by parts on the integral again, we get

  <\align>
    <tformat|<table|<row|<cell|f<around*|(|x|)>-f<around*|(|x<rsub|0>|)>=>|<cell|
    <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>f|)><around*|(|x<rsub|0>|)><around*|(|x<rsup|\<alpha\><rsub|1>>-x<rsub|0><rsup|\<alpha\><rsub|1>>|)>>>|<row|<cell|+>|<cell|<frac|1|2!>
    <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<partial\><rsub|\<alpha\><rsub|2>>f|)><around*|(|x<rsub|0>|)><around*|(|x<rsup|\<alpha\><rsub|1>>-x<rsub|0><rsup|\<alpha\><rsub|1>>|)><around*|(|x<rsup|\<alpha\><rsub|2>>-x<rsub|0><rsup|\<alpha\><rsub|2>>|)>>>|<row|<cell|+>|<cell|<frac|1|3!><big|int><rsub|0><rsup|1>\<mathd\><around*|(|t<rsup|3>|)>
    \ <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<partial\><rsub|\<alpha\><rsub|2>>\<partial\><rsub|\<alpha\><rsub|3>>f|)><around*|(|x+t<around*|(|x<rsub|0>-x|)>|)><around*|(|x<rsup|\<alpha\><rsub|1>>-x<rsub|0><rsup|\<alpha\><rsub|1>>|)><around*|(|x<rsup|\<alpha\><rsub|2>>-x<rsub|0><rsup|\<alpha\><rsub|2>>|)><around*|(|x<rsup|\<alpha\><rsub|3>>-x<rsub|0><rsup|\<alpha\><rsub|3>>|)>.>>>>
  </align>

  Repeating this process gives

  <\align>
    <tformat|<table|<row|<cell|f<around*|(|x|)>-f<around*|(|x<rsub|0>|)>=>|<cell|<around*|(|\<partial\><rsub|\<alpha\><rsub|1>>f|)><around*|(|x<rsub|0>|)><around*|(|x<rsup|\<alpha\><rsub|1>>-x<rsub|0><rsup|\<alpha\><rsub|1>>|)>>>|<row|<cell|+>|<cell|<frac|1|2!><around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<partial\><rsub|\<alpha\><rsub|2>>f|)><around*|(|x<rsup|\<alpha\><rsub|1>>-x<rsub|0><rsup|\<alpha\><rsub|1>>|)><around*|(|x<rsup|\<alpha\><rsub|2>>-x<rsub|0><rsup|\<alpha\><rsub|2>>|)>>>|<row|<cell|+>|<cell|\<cdots\>>>|<row|<cell|+>|<cell|<frac|1|n!><big|int><rsub|0><rsup|1>\<mathd\><around*|(|t<rsup|n>|)>
    <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>f|)><around*|(|x+t<around*|(|x<rsub|0>-x|)>|)><around*|(|x<rsup|\<alpha\><rsub|1>>-x<rsub|0><rsup|\<alpha\><rsub|1>>|)>\<cdots\><around*|(|x<rsup|\<alpha\><rsub|n>>-x<rsub|0><rsup|\<alpha\><rsub|n>>|)>.>>>>
  </align>

  So, the Taylor reminder reads

  <\equation>
    h<rsub|n><around*|(|x,x<rsub|0>|)>=<frac|1|n!><big|prod><rsub|i=1><rsup|n><around*|(|x<rsup|\<alpha\><rsub|i>>-x<rsub|0><rsup|\<alpha\><rsub|i>>|)>\<times\><big|int><rsub|0><rsup|1>\<mathd\><around*|(|t<rsup|n>|)>
    <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>f|)><around*|(|x+t<around*|(|x<rsub|0>-x|)>|)>.
  </equation>

  <appendix|Schwartz Functions are Dense in Square-Integrable
  Space><label|appendix:schwartz-dense>

  <appendix|Entire Functions are Dense in Schwartz
  Space><label|appendix:analytic-dense>

  <appendix|Computing the Uncertainty of Velocity><label|appendix:compute-uncert>

  We use Wolfram Mathematica to compute the integral in equation
  <reference|eq:deltavel>. Namely, given <math|<around*|(|N,n|)>>, we are to
  evaluate

  <\equation*>
    <big|int><rsub|\<bbb-R\>>\<mathd\>x<around*|[|\<partial\><rsup|N>\<varphi\><around*|(|x,0|)>\<partial\><rsup|N>\<varphi\><around*|(|x,0|)>-<frac|1|2>\<varphi\><around*|(|x,0|)>\<partial\><rsup|2N>\<varphi\><around*|(|x,0|)>|]>x<rsup|2+n>,
  </equation*>

  where <math|\<varphi\>> is given by equation
  <reference|eq:gaussianwavefunction>. In Mathematica, we first input
  <math|\<varphi\>> (re-denoted by <math|f>) as

  <\verbatim-code>
    f[x_, sigma_] := (2*Pi*sigma^2)^(-1/4)*Exp[-x^2/4/sigma^2];
  </verbatim-code>

  Then, input the target integral as

  <\verbatim-code>
    targetIntegral[sigma_, N_, n_] := Simplify[Integrate[(D[f[x, sigma], {x,
    N}]^2 - f[x, sigma]* D[f[x, sigma], {x, 2*N}] / 2) * x^(n+2), {x,
    -Infinity, Infinity}, Assumptions-\<gtr\>{Element[sigma, Reals], sigma
    \<gtr\> 0}]];
  </verbatim-code>

  where we have to assert that <verbatim|sigma> is a positive real number.
  Then, we try (we have to re-denote <math|N> by <verbatim|m> because
  <verbatim|N> has been a keyword of Mathematica)

  <\verbatim-code>
    list = Flatten[Table[{{m, n}, targetIntegral[sigma, m, n]}, {m, {2, 4, 6,
    8}}, {n, 0, 15}], 1]
  </verbatim-code>

  which outputs a list of <math|<around*|(|N,n|)>> pairs and the
  corresponding integrals, each element has the format <verbatim|{{N,n},
  integral}>. To filter the valid items, in which the integral is
  proportional to <math|1/\<sigma\><rsup|2>>, we append

  <\verbatim-code>
    result = Select[list, MatchQ[#[[2]], _*sigma^-2] &]
  </verbatim-code>

  The <verbatim|MatchQ> function matches the integrals (as the second
  element) that are proportional to <math|1/\<sigma\><rsup|2>>.

  <appendix|From Quantum to Classical>

  \;
</body>

<\initial>
  <\collection>
    <associate|bg-color|#c7edcc>
    <associate|page-medium|paper>
    <associate|page-orientation|portrait>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|appendix:analytic-dense|<tuple|C|17>>
    <associate|appendix:compute-uncert|<tuple|D|19>>
    <associate|appendix:schwartz-dense|<tuple|B|15>>
    <associate|auto-1|<tuple|1|3>>
    <associate|auto-10|<tuple|8|9>>
    <associate|auto-11|<tuple|9|10>>
    <associate|auto-12|<tuple|10|13>>
    <associate|auto-13|<tuple|A|15>>
    <associate|auto-14|<tuple|B|17>>
    <associate|auto-15|<tuple|C|19>>
    <associate|auto-16|<tuple|D|?>>
    <associate|auto-17|<tuple|E|?>>
    <associate|auto-2|<tuple|1.1|3>>
    <associate|auto-3|<tuple|1.2|3>>
    <associate|auto-4|<tuple|2|3>>
    <associate|auto-5|<tuple|3|3>>
    <associate|auto-6|<tuple|4|4>>
    <associate|auto-7|<tuple|5|5>>
    <associate|auto-8|<tuple|6|6>>
    <associate|auto-9|<tuple|7|7>>
    <associate|axiom:local|<tuple|3|8>>
    <associate|axiom:prob|<tuple|1|3>>
    <associate|axiom:sup|<tuple|2|3>>
    <associate|axiom:uncert|<tuple|4|10>>
    <associate|eq:action|<tuple|8|6>>
    <associate|eq:deltavel|<tuple|21|12>>
    <associate|eq:gaussianwavefunction|<tuple|20|10>>
    <associate|eq:hamiltonian|<tuple|5|5>>
    <associate|eq:kmanalogy|<tuple|11|7>>
    <associate|eq:moment|<tuple|9|6>>
    <associate|eq:momentexpansion|<tuple|12|7>>
    <associate|eq:pathint|<tuple|6|6>>
    <associate|eq:probtoself|<tuple|2|4>>
    <associate|eq:r-fourier|<tuple|4|5>>
    <associate|eq:transexp|<tuple|10|7>>
    <associate|equ:superposition|<tuple|1|3>>
    <associate|footnote-1|<tuple|1|4>>
    <associate|footnote-2|<tuple|2|5>>
    <associate|footnote-3|<tuple|3|5>>
    <associate|footnote-4|<tuple|4|8>>
    <associate|footnote-5|<tuple|5|11>>
    <associate|footnote-6|<tuple|6|?>>
    <associate|footnr-1|<tuple|1|4>>
    <associate|footnr-2|<tuple|2|5>>
    <associate|footnr-3|<tuple|3|5>>
    <associate|footnr-4|<tuple|4|8>>
    <associate|footnr-5|<tuple|5|11>>
    <associate|footnr-6|<tuple|6|?>>
    <associate|section:Expanding Kernel as Generalized Function|<tuple|7|6>>
    <associate|section:Hermitianity on Moments|<tuple|9|9>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Introduction <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Conventions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Abbreviations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      2<space|2spc>Probability Interpretation and Wavefunction
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>

      3<space|2spc>Superposition Principle and Time Evolution
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>

      4<space|2spc>Analytic Schwartz Space Is Dense in Square-Integrable
      Space <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>

      5<space|2spc>Path Integral Formalism
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>

      6<space|2spc>Expanding Kernel as Generalized Function
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>

      7<space|2spc>Locality Truncates the Moments
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>

      8<space|2spc>Hermitianity on the Moments of Transition Rate
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>

      9<space|2spc>Uncertainty Principle Restricts the Highest Order Moment
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      A<space|2spc>Taylor Reminder> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      B<space|2spc>Schwartz Functions are Dense in Square-Integrable Space>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      C<space|2spc>Analytic Functions are Dense in Schwartz Space>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      D<space|2spc>Computing the Uncertainty of Velocity>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>