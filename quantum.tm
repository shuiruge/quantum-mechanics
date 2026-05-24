<TeXmacs|2.1.4>

<style|article>

<\body>
  <doc-data|<doc-title|Build Quantum Mechanics from Scratch>>

  <section|Introduction>

  We derive the Schr<wide|o|\<ddot\>>dinger equation of quantum mechanics
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
  y=x\<cdot\>y=<big|sum><rsub|\<alpha\>=1><rsup|d>x<rsup|\<alpha\>>y<rsup|\<alpha\>>>.
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

  <section|Analytic Schwartz Space Is Dense in Square-Integrable Space>

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
  function that is consistent with its Taylor series is analytical. It
  indicates that we shall further restrict the space of wavefunctions to
  <strong|analytic Schwartz space>, denoted by
  <math|\<cal-S\><rsub|A><around*|(|\<bbb-R\><rsup|d>|)>>, which collects all
  the analytic functions in Schwartz space
  <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>.

  For example, in traditional textures, solving the stationary
  Schr<wide|o|\<ddot\>>dinger equation of one-dimensional harmonic oscillator
  needs the expansion of wavefunction

  <\equation*>
    \<varphi\><around*|(|x|)>=exp<around*|(|-x<rsup|2>|)>
    <around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>x<rsup|n>|]>,
  </equation*>

  where the coefficients <math|<around*|(|a<rsub|0>,a<rsub|1>,\<ldots\>|)>>
  are to be determined. The factor <math|exp<around*|(|-x<rsup|2>|)>> is
  employed for an exponentially fast decay as
  <math|<around*|\||x|\|>\<rightarrow\>\<infty\>> (thus <math|\<varphi\>> is
  a Schwartz function). And the factor <math|<around*|[|\<cdots\>|]>> is a
  Taylor series. Hence, <math|f> is an analytic function in Schwartz space.
  The energy quantization emerges for ensuring the convergence of the series
  <math|<big|sum><rsub|n>a<rsub|n>x<rsup|n>>.

  Analytic Schwartz functions are dense in square-integrable space, meaning
  that for any <math|f\<in\>L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>> and any
  <math|\<varepsilon\>\<gtr\>0>, there is a
  <math|g\<in\>\<cal-S\><rsub|A><around*|(|\<bbb-R\><rsup|d>|)>> such that

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    <around*|\||f<around*|(|x|)>-g<around*|(|x|)>|\|><rsup|2>\<less\>\<varepsilon\>.
  </equation*>

  For example, for any wavefunction <math|f\<in\>L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>,
  when we measure the probability on any area of positions
  <math|U\<subset\>\<bbb-R\><rsup|d>>, we can use its approximation
  <math|g\<in\>\<cal-S\><rsub|A><around*|(|\<bbb-R\><rsup|d>|)>> instead,
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
  <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>\<rightarrow\>\<cal-S\><rsub|A><around*|(|\<bbb-R\><rsup|d>|)>>
  is plausible. Proof of the statement that analytic Schwartz functions are
  dense in square-integrable space is given in the appendices TODO.

  TODO: can we approximate <math|r\<in\>\<cal-S\><rsub|A><around*|(|\<bbb-R\><rsup|2d>|)>>?

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
    \<varphi\><around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|2d>><frac|\<mathd\>y\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<around*|(|x-y|)>-\<mathi\><wide|r|^><around*|(|x,k|)>\<Delta\>t|}>\<varphi\><around*|(|y,t-\<Delta\>t|)>+\<omicron\><around*|(|\<Delta\>t|)>
  </equation*>

  After re-denoting <math|x<rsub|N>\<assign\>x>,
  <math|x<rsub|N-1>\<assign\>y>, <math|k<rsub|N-1>\<assign\>k>, it becomes

  <\equation*>
    \<varphi\><around*|(|x<rsub|N>,t|)>=<big|int><rsub|\<bbb-R\><rsup|2d>><frac|\<mathd\>x<rsub|N-1>\<mathd\>k<rsub|N-1>|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<rsub|N-1><around*|(|x<rsub|N>-x<rsub|N-1>|)>-\<mathi\><wide|r|^><around*|(|x<rsub|N>,k<rsub|N-1>|)>\<Delta\>t|}>
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
    <big|int>D<around*|(|x,k|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|2d>><frac|\<mathd\>x<rsub|N-1>\<mathd\>k<rsub|N-1>|<around*|(|2\<mathpi\>|)><rsup|d>>*\<cdots\>*<big|int><rsub|\<bbb-R\><rsup|2d>><frac|\<mathd\>x<rsub|0>\<mathd\>k<rsub|0>|<around*|(|2\<mathpi\>|)><rsup|d>>
  </equation>

  and

  <\equation>
    S<around*|(|k,x|)>\<assign\><big|sum><rsub|i=0><rsup|N-1>\<Delta\>t<around*|[|k<rsub|i><around*|(|<frac|x<rsub|i+1>-x<rsub|i>|\<Delta\>t>|)>-<wide|r|^><around*|(|x<rsub|i+1>,k<rsub|i>|)>|]>.<label|eq:action>
  </equation>

  If we recognize <math|<around*|(|x<rsub|i+1>-x<rsub|i>|)>/\<Delta\>t> as
  the velocity <math|<wide|x|\<dot\>><rsub|i>>, then the
  <math|S<around*|(|x,k|)>> can be seen as the Legendre transform
  <math|<wide|x|\<dot\>>p-H<around*|(|x,p|)>>, in which <with|color|dark
  green|<em|<math|k> is analogy to momentum <math|p> and
  <math|<wide|r|^><around*|(|x,k|)>> plays the role of Hamiltonian
  <math|H<around*|(|x,p|)>>>>.

  <section|Expansions of Kernel and of Hamiltonian>

  For any \Ptest function\Q <math|\<varphi\>\<in\>\<cal-S\><rsub|A><around*|(|\<bbb-R\><rsup|d>|)>>,
  by Taylor expanding <math|\<varphi\>> at <math|x>, we have

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
  by applying to an analytic Schwartz function can it make sense.>> It claims
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
  <math|\<partial\><rsup|n>\<delta\>>, we integrate over <math|x>, resulting
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
  we have all <math|R<rsub|n><around*|(|x|)>=0> except for
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

  which is exactly the Schr<wide|o|\<ddot\>>dinger equation.

  <section|Locality Truncates the Moments>

  We then introduce the third axiom about locality, and discuss what it will
  induce. TODO

  <\axiom>
    [Locality]<label|axiom:local> Time evolution of quantum system is local.
  </axiom>

  Shall not confuse time evolution with collapse, which is proven to be
  non-local. Axiom <reference|axiom:local> claims that equation
  <reference|equ:superposition> is local. To make this clear, we consider an
  example, in which <math|R<rsub|n><around*|(|x|)>=c<rsup|n>> for some
  constant <math|c>, and set the dimension <math|d=1>. Then, the time
  evolution (equation <reference|eq:kmanalogy>) at <math|x=0> becomes

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

  If we change the value of <math|f> at <math|x=-c>, then the time evolution
  at <math|x=0> changes accordingly. It means non-locality.

  In physics, a local equation generally refers to an operation on
  <math|\<varphi\>> which contains <math|\<varphi\>> itself and <em|finite>
  number of partial derivatives of <math|\<varphi\>>, such as

  <\equation*>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=\<cal-L\><around*|(|\<varphi\><around*|(|x,t|)>,<frac|\<partial\>\<varphi\>|\<partial\>x><around*|(|x,t|)>,<frac|\<partial\><rsup|2>\<varphi\>|\<partial\>x<rsup|2>><around*|(|x,t|)>,\<ldots\>,<frac|\<partial\><rsup|n>\<varphi\>|\<partial\>x<rsup|n>><around*|(|x,t|)>|)>,
  </equation*>

  where <math|\<cal-L\>> is an analytic function. This is easy to understand
  because to compute <math|<around*|(|\<partial\><rsup|n>\<varphi\>/\<partial\>x<rsup|n>|)><around*|(|0,t|)>>
  using numerical method with difference <math|\<Delta\>x>, only
  <math|\<varphi\><around*|(|x,t|)>> with
  <math|x\<in\><around*|{|0,\<Delta\>x,\<ldots\>,n\<Delta\>x|}>> are
  employed. So, <math|<around*|(|\<partial\>\<varphi\>/\<partial\>t|)><around*|(|0,t|)>>
  cannot \Pperceive\Q the <math|\<varphi\><around*|(|x,t|)>> outside the
  neighborhood <math|<around*|{|x:<around*|\||x|\|>\<leqslant\>n\<Delta\>x|}>>.
  Since <math|\<Delta\>x> can be arbitrarily small (but not vanishing), the
  equation is local.

  In the previous discussion, we have shown that, with a cut-off
  <math|N<rsub|cut>> on <math|R<rsub|n>>s such that <math|R<rsub|n>=0> for
  any <math|n\<gtr\>N<rsub|cut>>, the time evolution is local. And without
  such a cut-off, we can construct a sequence of <math|R<rsub|n>>s such that
  the time evolution is not local. Now, we are to prove that, generally,
  without a cut-off, any sequence of <math|R<rsub|n>>s (such that for any
  <math|N\<gtr\>0>, there are infinite many <math|R<rsub|n>>s that are not
  vanishing), the time evolution is non-local. This then imports a cut-off on
  moments.

  Before proving, we first declare a property of analytic function. Consider
  the Taylor expansion of <math|\<varphi\>\<in\>\<cal-S\><rsub|A><around*|(|\<bbb-R\>|)>>
  at origin

  <\equation*>
    \<varphi\><around*|(|x|)>=a<rsub|0>+a<rsub|1>x+a<rsub|2>x<rsup|2>+\<cdots\>.
  </equation*>

  The information of <math|\<varphi\>> is completely encoded in the infinite
  sequence of <math|a<rsub|n>>s. This is the result of a theorem which claims
  that two analytic functions are equal if they agree in any interval (hence
  we can obtain the Taylor series of the function within the interval). What
  if we only know a portion of the infinite sequence of <math|a<rsub|n>>s?
  For example, if we only know the <math|a<rsub|0>>, then only the value of
  <math|\<varphi\><around*|(|x|)>> at <math|x=0> is determined. Further, if
  we also know the <math|a<rsub|1>>, then we can give a good approximation to
  <math|\<varphi\><around*|(|x|)>> in a very tiny neighborhood of <math|x=0>,
  since <math|\<varphi\><around*|(|x|)>=a<rsub|0>+a<rsub|1>x+\<omicron\><around*|(|x<rsup|2>|)>>.
  Then, if we additionally know the <math|a<rsub|2>>, then the approximation
  becomes as good as before in a larger neighborhood of <math|x=0>, since
  <math|\<varphi\><around*|(|x|)>=a<rsub|0>+a<rsub|1>x+a<rsub|2>x<rsup|2>+\<omicron\><around*|(|x<rsup|3>|)>>
  and for keeping the scale of residue, the size of neighborhood can increase
  a little. This analysis indicates that the more <math|a<rsub|n>>s we know,
  in a larger neighborhood of <math|x=0> can we properly approximate
  <math|\<varphi\><around*|(|x|)>>. Our vision becomes border and border if
  we know more and more <math|a<rsub|n>>s. Until knowing the whole sequence
  of <math|a<rsub|n>>s, we realize the complete picture of
  <math|\<varphi\><around*|(|x|)>> (based on the previous theorem about
  analytic function).

  It also indicates that, for a sufficient large <math|N>, we can keep
  <math|\<varphi\><around*|(|x|)>> (approximately) invariant when we tune the
  <math|a<rsub|n>>s with <math|n\<gtr\>N> while keep the other
  <math|a<rsub|n>>s invariant. So, based on the equation (plugging
  <math|\<varphi\><around*|(|x|)>=<big|sum><rsub|n>a<rsub|n>x<rsup|n>> into
  equation <reference|eq:kmanalogy>, and collecting all <math|a<rsub|m>>
  terms with <math|m\<less\>n> into <math|<around*|[|\<cdots\>|]>>).

  <\equation*>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|0,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><around*|{|<around*|[|\<cdots\>|]>+<around*|(|-1|)><rsup|n>R<rsub|n><around*|(|0|)>a<rsub|n>|}>,
  </equation*>

  if there is not a cut-off to the infinite sequence of
  <math|R<rsub|n><around*|(|0|)>>s, we can modify the
  <math|<around*|(|\<partial\>\<varphi\>/\<partial\>t|)><around*|(|0,t|)>> by
  tuning an <math|a<rsub|n>> where <math|n> can be arbitrarily large. This,
  however, will leave the <math|\<varphi\><around*|(|x|)>> around <math|x=0>
  invariant. It means that the value of <math|\<varphi\>> with <math|x> far
  away from origin can affect the time evolution of <math|\<varphi\>> at
  origin. That is, time evolution is non-local. Hence, there must be a
  cut-off on the sequence of <math|R<rsub|n><around*|(|0|)>>s. This
  discussion also holds for any value of <math|x> other than <math|x=0>. We
  conclude that <with|color|dark green|<em|time evolution is local if and
  only if there is a positive integer <math|N<rsub|cut>> such that
  <math|R<rsub|n>=0> for any <math|n\<gtr\>N<rsub|cut>>>>.

  <section|Hermitianity on the Moments of Transition
  Rate><label|section:Hermitianity on Moments>

  Now we study the relation between <math|R<rsub|n>>s and their complex
  conjugations. By conjugating equation <reference|eq:hamiltonian> and
  applying the Hermitianity of <math|r>, we get

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|x,k|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>\<epsilon\>
    exp<around*|(|\<mathi\>k\<epsilon\>|)>
    r<rsup|\<ast\>><around*|(|x,x+\<epsilon\>|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>\<epsilon\>
    exp<around*|(|\<mathi\>k\<epsilon\>|)> r<around*|(|x+\<epsilon\>,x|)>.
  </equation*>

  Then, applying equation <reference|eq:r-fourier> to
  <math|r<around*|(|x+\<epsilon\>,x|)>> gives

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|x,k|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>k<rprime|'><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>\<epsilon\>|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|(|\<mathi\><around*|(|k-k<rprime|'>|)>\<epsilon\>|)>
    <wide|r|^><around*|(|x+\<epsilon\>,k<rprime|'>|)>.
  </equation*>

  Taylor expanding <math|><math|r<around*|(|x+\<epsilon\>,x|)>> by
  <math|\<epsilon\>> at its origin

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|x,k|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>k<rprime|'><frac|\<partial\><rsup|n><wide|r|^>|\<partial\>x<rsup|\<alpha\>>><around*|(|x,k<rprime|'>|)>\<times\><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>\<epsilon\>|<around*|(|2\<mathpi\>|)><rsup|d>>
    \ exp<around*|(|\<mathi\><around*|(|k-k<rprime|'>|)>\<epsilon\>|)>\<epsilon\><rsup|\<alpha\>>.
  </equation*>

  The last integral is evaluated to be <math|<around*|(|-\<mathi\>|)><rsup|n>\<partial\><rsup|n><rsub|\<alpha\>>\<delta\><around*|(|k-k<rprime|'>|)>>.
  Thus,

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|x,k|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|n>|n!><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>k<rprime|'><frac|\<partial\><rsup|n><wide|r|^>|\<partial\>x<rsup|\<alpha\>>><around*|(|x,k<rprime|'>|)>\<partial\><rsup|n><rsub|\<alpha\>>\<delta\><around*|(|k-k<rprime|'>|)>.
  </equation*>

  Then, by integration by parts (recall the parity of
  <math|\<partial\><rsup|n>\<delta\>>), we arrive at

  <\equation>
    <wide|r|^><rsup|\<ast\>><around*|(|x,k|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|n>|n!><frac|\<partial\><rsup|2n><wide|r|^>|\<partial\>x<rsup|\<alpha\>>\<partial\>k<rsub|\<alpha\>>><around*|(|x,k|)>.
  </equation>

  Since <math|<around*|(|-\<mathi\>|)><rsup|n>R<rsub|n><around*|(|x|)>>s are
  the coefficients of Taylor expansion of <math|<wide|r|^><around*|(|x,k|)>>
  by <math|k> (equation <reference|eq:expandbymoments>), we find

  <\equation*>
    <around*|(|R<rsup|\<alpha\>><rsub|m>|)><rsup|\<ast\>><around*|(|x|)>=<around*|(|-\<mathi\>|)><rsup|m><frac|\<partial\><rsup|m><wide|r|^><rsup|\<ast\>>|\<partial\>k<rsub|\<alpha\>>><around*|(|x,0|)>=<around*|(|-\<mathi\>|)><rsup|m><big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|n>|n!><frac|\<partial\><rsup|n>|\<partial\>x<rsup|\<beta\>>><frac|\<partial\><rsup|m+n><wide|r|^>|\<partial\>k<rsub|\<alpha\>>\<partial\>k<rsub|\<beta\>>><around*|(|x,0|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|m+n>|n!>\<partial\><rsup|n><rsub|\<beta\>>R<rsup|\<alpha\>\<beta\>><rsub|m+n><around*|(|x|)>.
  </equation*>

  Recall that <math|R<rsub|n>=0> for any <math|n\<gtr\>N<rsub|cut>>, we
  finally get

  <\equation>
    <around*|(|R<rsup|\<alpha\>><rsub|m>|)><rsup|\<ast\>><around*|(|x|)>=<big|sum><rsub|n=0><rsup|N<rsub|cut>-m><frac|<around*|(|-1|)><rsup|m+n>|n!>\<partial\><rsup|n><rsub|\<beta\>>R<rsup|\<alpha\>\<beta\>><rsub|m+n><around*|(|x|)>.
  </equation>

  For example, when <math|N<rsub|cut>=2>, we have

  <\equation*>
    R<rsub|0><rsup|\<ast\>><around*|(|x|)>=R<rsub|0><around*|(|x|)>-\<partial\><rsub|\<alpha\>>R<rsup|\<alpha\>><rsub|1><around*|(|x|)>+<frac|1|2>\<partial\><rsup|2><rsub|\<alpha\>>R<rsup|\<alpha\>><rsub|2><around*|(|x|)>,
  </equation*>

  <\equation*>
    <around*|(|R<rsub|1><rsup|\<alpha\>>|)><rsup|*\<ast\>><around*|(|x|)>=-R<rsub|1><rsup|\<alpha\>><around*|(|x|)>+\<partial\><rsub|\<beta\>>R<rsup|\<alpha\>\<beta\>><rsub|2><around*|(|x|)>,
  </equation*>

  and

  <\equation*>
    <around*|(|R<rsub|2><rsup|\<alpha\>>|)><rsup|\<ast\>><around*|(|x|)>=R<rsup|\<alpha\>><rsub|2><around*|(|x|)>,
  </equation*>

  that is, <math|R<rsub|2>> is real. Generally, we have

  <\equation*>
    R<rsub|N<rsub|cut>><rsup|\<ast\>><around*|(|x|)>=<around*|(|-1|)><rsup|N<rsub|cut>>R<rsub|N<rsub|cut>><around*|(|x|)>.
  </equation*>

  That is, <math|R<rsub|N<rsub|cut>>> is real when <math|N<rsub|cut>> is
  even, otherwise purely imaginary.

  <section|Uncertainty Principle>

  An <strong|observable> is a real function of the configuration of a quantum
  system. A corollary of axiom <reference|axiom:prob> is that, given a
  wavefunction <math|f> and an observable
  <math|O:\<bbb-R\><rsup|d>\<rightarrow\>\<bbb-R\>>, the observed value is
  the expectation <math|\<bbb-E\><rsub|f><around*|[|O|]>\<assign\><big|int>\<mathd\>x
  <around*|\||f<around*|(|x|)>|\|><rsup|2>O<around*|(|x|)>>, since
  <math|<around*|\||f<around*|(|x|)>|\|><rsup|2>> represents the probability
  density that the system is found at configuration <math|x>. When time is
  considered, it turns to be

  <\equation>
    \<bbb-E\><rsub|f><around*|[|O<around*|(|t|)>|]>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    f<rsup|\<ast\>><around*|(|x,t|)>f<around*|(|x,t|)>O<around*|(|x|)>.
  </equation>

  \;

  For a single particle system, we use <math|x<around*|(|t|)>> to denote the
  position of the particle at time <math|t>. Velocity is defined as usual,

  <\equation*>
    v<around*|(|t|)>\<assign\>lim<rsub|\<Delta\>t\<rightarrow\>0><frac|x<around*|(|t+\<Delta\>t|)>-x<around*|(|t|)>|\<Delta\>t>.
  </equation*>

  Both position and velocity are observables. Further, we can compute the
  variance of an observable <math|O> as an expectation
  <math|Var<rsub|f><around*|[|O<around*|(|t|)>|]>\<assign\>\<bbb-E\><rsub|f><around*|[|<around*|(|O-\<bbb-E\><rsub|f><around*|[|O<around*|(|t|)>|]>|)><rsup|2>|]>>.
  Then, uncertainty principle claims the relation between the variances of
  position and of velocity.

  <\axiom>
    [Uncertainty Principle of Single Particle]<label|axiom:uncert> In a
    single particle quantum system, given a wavefunction <math|f>, the
    variances of position and of velocity have the relation

    <\equation*>
      \<Delta\>x\<Delta\>v\<assign\><sqrt|Var<rsub|f><around*|[|x<around*|(|t|)>|]>
      Var<rsub|f><around*|[|v<around*|(|t|)>|]>>\<sim\>\<hbar\>/<around*|(|2m|)>,
    </equation*>

    where <math|m> is the mass of the particle, and <math|\<hbar\>> is the
    reduced Planck's constant.
  </axiom>

  <subsection|Implication on Moments>

  In this section, we are to show how uncertainty principle restricts further
  to the kernel. We first deal with the situation where dimension <math|d=1>.
  Since axiom <reference|axiom:uncert> holds for all wavefunctions of a
  single particle, we choose <math|f> to be Gaussian at <math|t=0>, that is

  <\equation*>
    f<around*|(|x,0|)>=<around*|(|2\<mathpi\>\<sigma\><rsup|2>|)><rsup|-1/4>
    exp<around*|(|-<frac|x<rsup|2>|4\<sigma\><rsup|2>>|)>.
  </equation*>

  The coefficient guarantees the normalization of <math|f>. By axiom
  <reference|axiom:prob>, we have

  <\equation*>
    \<bbb-E\><rsub|f><around*|[|x<around*|(|0|)>|]>\<assign\><big|int><rsub|\<bbb-R\>>\<mathd\>x
    f<rsup|\<ast\>><around*|(|x,0|)>f<around*|(|x,0|)>x=<frac|1|<sqrt|2\<mathpi\>\<sigma\><rsup|2>>><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    exp<around*|(|-<frac|x<rsup|2>|2\<sigma\><rsup|2>>|)>x=0,
  </equation*>

  then

  <\equation*>
    Var<rsub|f><around*|[|x<around*|(|0|)>|]>\<assign\><big|int><rsub|\<bbb-R\>>\<mathd\>x
    f<rsup|\<ast\>><around*|(|x,0|)>f<around*|(|x,0|)>x<rsup|2>=<frac|1|<sqrt|2\<mathpi\>\<sigma\><rsup|2>>><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    exp<around*|(|-<frac|x<rsup|2>|2\<sigma\><rsup|2>>|)>x<rsup|2>=\<sigma\><rsup|2>.
  </equation*>

  \;

  To evaluate <math|Var<rsub|f><around*|[|v<around*|(|0|)>|]>>, we have to
  use the time evolution to calculate <math|x<around*|(|\<Delta\>t|)>>. By
  equation <reference|equ:superposition>, we have (for brevity, we omit the
  subscript <math|cut> in <math|N<rsub|cut>>)

  <\equation*>
    f<around*|(|x,\<Delta\>t|)>=f<around*|(|x,0|)>-\<mathi\>\<Delta\>t<big|sum><rsub|n=0><rsup|N><frac|<around*|(|-1|)><rsup|n>|n!>
    \<partial\><rsup|n><around*|[|R<rsub|n><around*|(|x|)>f<around*|(|x,0|)>|]>-<frac|\<mathi\>|2>\<Delta\>t<rsup|2><big|sum><rsub|n=0><rsup|N><big|sum><rsub|n<rprime|'>=0><rsup|N>\<cdots\>.
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
    \<mathi\><frac|\<partial\>f|\<partial\>t><around*|(|x,t|)>=<frac|<around*|(|-1|)><rsup|N>|N!>
    R<rsub|N><around*|(|x|)>\<partial\><rsup|N>f<around*|(|x,t|)>.
  </equation*>

  Hence,

  <\align>
    <tformat|<table|<row|<cell|f<around*|(|x,\<Delta\>t|)>=>|<cell|f<around*|(|x,0|)>+<frac|\<partial\>f|\<partial\>t><around*|(|x,0|)>\<Delta\>t+<frac|1|2><frac|\<partial\><rsup|2>f|\<partial\>t<rsup|2>><around*|(|x,0|)>\<Delta\>t<rsup|2>+\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>>>|<row|<cell|=>|<cell|f<around*|(|x,0|)>-\<mathi\><frac|<around*|(|-1|)><rsup|N>|N!>
    R<rsub|N><around*|(|x|)>\<partial\><rsup|N>f<around*|(|x,0|)>\<Delta\>t-<frac|\<mathi\>|2><frac|<around*|(|-1|)><rsup|N>|N!>
    R<rsub|N><around*|(|x|)>\<partial\><rsup|N><frac|\<partial\>f|\<partial\>t><around*|(|x,0|)>\<Delta\>t<rsup|2>+\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>.>>>>
  </align>

  Inserting <math|<around*|(|\<partial\>f/\<partial\>t|)>> again gives

  <\equation*>
    f<around*|(|x,\<Delta\>t|)>=f<around*|(|x,0|)>-\<mathi\><frac|<around*|(|-1|)><rsup|N>|N!>
    R<rsub|N><around*|(|x|)>\<partial\><rsup|N>f<around*|(|x,0|)>\<Delta\>t-<frac|1|2><around*|[|<frac|<around*|(|-1|)><rsup|N>|N!>R<rsub|N><around*|(|x|)>|]><rsup|2>\<partial\><rsup|2N>f<around*|(|x,0|)>\<Delta\>t<rsup|2>+\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>.
  </equation*>

  \;

  Now we are to evaluate <math|Var<rsub|f><around*|[|v<around*|(|0|)>|]>>.
  First, we consider <math|\<bbb-E\><rsub|f><around*|[|v<around*|(|0|)>|]>=\<bbb-E\><rsub|f><around*|[|x<around*|(|\<Delta\>t|)>-x<around*|(|0|)>|]>/\<Delta\>t>.
  The <math|f> used for the expectation is <math|f<around*|(|x,\<Delta\>t|)>>
  instead of <math|f<around*|(|x,0|)>>. So, it cannot be expanded as
  <math|<around*|(|\<bbb-E\><rsub|f><around*|[|x<around*|(|\<Delta\>t|)>|]>-\<bbb-E\><rsub|f><around*|[|x<around*|(|0|)>|]>|)>/\<Delta\>t>
  except for treating <math|x<around*|(|0|)>> as a constant, the constant
  <math|\<bbb-E\><rsub|f><around*|[|x<around*|(|0|)>|]>> which has been
  evaluated as zero. Then, we have

  <\equation*>
    \<bbb-E\><rsub|f><around*|[|v<around*|(|0|)>|]>=<frac|\<bbb-E\><rsub|f><around*|[|x<around*|(|\<Delta\>t|)>|]>|\<Delta\>t>=<big|int><rsub|\<bbb-R\>>\<mathd\>x
    f<rsup|\<ast\>><around*|(|x,\<Delta\>t|)>f<around*|(|x,\<Delta\>t|)><frac|x|\<Delta\>t>
  </equation*>

  Inserting <math|f<around*|(|x,\<Delta\>t|)>> up to
  <math|\<omicron\><around*|(|\<Delta\>t|)>>, we find

  <\align>
    <tformat|<table|<row|<cell|\<bbb-E\><rsub|f><around*|[|v<around*|(|0|)>|]>=>|<cell|<big|int><rsub|\<bbb-R\>>\<mathd\>x<around*|[|f<around*|(|x,0|)>+\<mathi\><frac|<around*|(|-1|)><rsup|N>|N!>
    R<rsup|\<ast\>><rsub|N><around*|(|x|)>\<partial\><rsup|N>f<around*|(|x,0|)>\<Delta\>t|]><around*|[|f<around*|(|x,0|)>-\<mathi\><frac|<around*|(|-1|)><rsup|N>|N!>
    R<rsub|N><around*|(|x|)>\<partial\><rsup|N>f<around*|(|x,0|)>\<Delta\>t|]><frac|x|\<Delta\>t>>>|<row|<cell|=>|<cell|\<mathi\>\<Delta\>t<frac|<around*|(|-1|)><rsup|N>|N!><big|int><rsub|\<bbb-R\>>\<mathd\>x<around*|[|R<rsup|\<ast\>><rsub|N><around*|(|x|)>-
    R<rsub|N><around*|(|x|)>|]>\<partial\><rsup|N>f<around*|(|x,0|)>x+\<omicron\><around*|(|\<Delta\>t|)>.>>>>
  </align>

  When <math|N> is even, <math|R<rsub|N><around*|(|x|)>> is real (see section
  <reference|section:Hermitianity on Moments>), we find
  <math|\<bbb-E\><rsub|f><around*|[|v<around*|(|0|)>|]>=\<omicron\><around*|(|1|)>>.
  But when <math|N> is odd, <math|R<rsub|N><around*|(|x|)>> is imaginary. In
  this situation, denote <math|R<rsub|N><around*|(|x|)>=\<mathi\>A<around*|(|x|)>/2>,
  we get

  <\equation*>
    \<bbb-E\><rsub|f><around*|[|v<around*|(|0|)>|]>=\<Delta\>t<frac|<around*|(|-1|)><rsup|N>|N!><big|int><rsub|\<bbb-R\>>\<mathd\>x
    A<around*|(|x|)>\<partial\><rsup|N>f<around*|(|x,0|)>x+\<omicron\><around*|(|\<Delta\>t|)>,
  </equation*>

  which may not vanish up to <math|\<omicron\><around*|(|\<Delta\>t|)>>,
  leading to a violation of parity symmetry, because the velocity has a
  favored direction even though the distribution (or wavefunction) has not.

  Then, using the famous formula of variance,

  <\equation*>
    Var<rsub|f><around*|[|v<around*|(|0|)>|]>=\<bbb-E\><rsub|f><around*|[|v<rsup|2><around*|(|0|)>|]>-\<bbb-E\><rsup|2><rsub|f><around*|[|v<around*|(|0|)>|]>.
  </equation*>

  Now focus on <math|\<bbb-E\><rsub|f><around*|[|v<rsup|2><around*|(|0|)>|]>>.
  Recalling that <math|x<around*|(|0|)>> is treated as the constant
  <math|\<bbb-E\><rsub|f><around*|[|x<around*|(|0|)>|]>=0>,

  <\equation*>
    \<bbb-E\><rsub|f><around*|[|v<rsup|2><around*|(|0|)>|]>=<frac|\<bbb-E\><rsub|f><around*|[|<around*|(|x<around*|(|\<Delta\>t|)>-\<bbb-E\><rsub|f><around*|[|x<around*|(|0|)>|]>|)><rsup|2>|]>|\<Delta\>t<rsup|2>>=<frac|\<bbb-E\><rsub|f><around*|[|x<rsup|2><around*|(|\<Delta\>t|)>|]>|\<Delta\>t<rsup|2>>.
  </equation*>

  Hence, since <math|R<rsub|N>> has been real, we have

  <\align>
    <tformat|<table|<row|<cell|\<bbb-E\><rsub|f><around*|[|v<rsup|2><around*|(|0|)>|]>>|<cell|=<big|int><rsub|\<bbb-R\>>\<mathd\>x
    f<rsup|\<ast\>><around*|(|x,\<Delta\>t|)>f<around*|(|x,\<Delta\>t|)><frac|x<rsup|2>|\<Delta\>t<rsup|2>>>>|<row|<cell|=>|<cell|<around*|(|<frac|1|N!>|)><rsup|2><big|int><rsub|\<bbb-R\>>\<mathd\>x<around*|[|\<partial\><rsup|N>f<around*|(|x,0|)>\<partial\><rsup|N>f<around*|(|x,0|)>-\<partial\><rsup|2N>f<around*|(|x,0|)>f<around*|(|x,0|)>|]>R<rsub|N><rsup|2><around*|(|x|)>x<rsup|2>+\<omicron\><around*|(|1|)>.>>>>
  </align>

  Assume that <math|R<rsub|N><rsup|2>> is analytic, so that we can Taylor
  expand it at origin, as

  <\equation*>
    R<rsub|N><rsup|2><around*|(|x|)>=R<rsup|2><rsub|N><around*|(|0|)>+\<partial\>R<rsup|2><rsub|N><around*|(|0|)>x+<frac|1|2>\<partial\><rsup|2>R<rsup|2><rsub|N><around*|(|0|)>x<rsup|2>+\<cdots\>.
  </equation*>

  We arrive at

  <\equation*>
    \<bbb-E\><rsub|f><around*|[|v<rsup|2><around*|(|0|)>|]>=<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|<frac|1|N!>|)><rsup|2><frac|\<partial\><rsup|n>R<rsup|2><rsub|N><around*|(|0|)>|n!><big|int><rsub|\<bbb-R\>>\<mathd\>x<around*|[|\<partial\><rsup|N>f<around*|(|x,0|)>\<partial\><rsup|N>f<around*|(|x,0|)>-\<partial\><rsup|2N>f<around*|(|x,0|)>f<around*|(|x,0|)>|]>x<rsup|2+n>+\<omicron\><around*|(|1|)>.
  </equation*>

  <subsection|When <math|N> Is Even>

  For simplicity, we first consider the case where <math|N> is even. Using
  maxima, we compute the term in <math|\<bbb-E\><rsub|f><around*|[|v<rsup|2><around*|(|0|)>|]>>
  for each <math|N> and <math|n>.<\footnote>
    First assume <verbatim|assume(\<sigma\> \<gtr\> 0)$>. Define <verbatim|N:
    7$ n: 10$> (for instance), <verbatim|f: (2*%pi*\<sigma\>^2)^(-1/4) *
    exp(-x^2 / (4*\<sigma\>^2))$>, and <verbatim| integrand: (diff(f, x,
    N)*diff(f, x, N) - diff(f, x, 2*N)*f) * x^(n+2)$>. Then
    <verbatim|at(diff(R2(x), x, n), x=0)/(N!^2)/n! * integrate(integrand, x,
    -inf, inf);> gives the <math|n>-th term in
    <math|\<bbb-E\><rsub|f><around*|[|v<rsup|2><around*|(|0|)>|]>>.
  </footnote><\footnote>
    TODO: use sympy instead. It seems that the installed maxima losses some
    files.
  </footnote> <with|color|dark green|<em|Restricted <math|N> to be positive
  even number, we shall have <math|R<rsub|N><around*|(|x|)>\<propto\>x<rsup|N-2>>
  so as to satisfy the uncertainty principle <reference|axiom:uncert>.>> Any
  other situation depends on <math|\<sigma\>>, which is either vanishing or
  diverging when <math|\<sigma\>> tends to zero. The specific case is
  <math|N=2> in which <math|R<rsub|N>> becomes constant. This is the
  canonical situation in physics.

  <subsection|When <math|N> Is Odd>

  TODO

  <subsection|Generalizations>

  We can generalize the previous analysis to dimension <math|d\<gtr\>1>, in
  which the covariance matrix of <math|f> is diagonal, such that all
  dimensions are independent. Namely,

  <\equation*>
    f<around*|(|x,0|)>=<big|prod><rsub|\<alpha\>=1><rsup|d><around*|(|2\<mathpi\><around*|(|\<sigma\><rsup|\<alpha\>>|)><rsup|2>|)><rsup|-1/4>exp<around*|(|-<frac|1|4><around*|(|<frac|x<rsup|\<alpha\>>|\<sigma\><rsup|\<alpha\>>>|)><rsup|2>|)>.
  </equation*>

  The previous analysis, then, is taken on each dimension individually,
  resulting in exactly the same result for each dimension.

  In the same way, we can generalize it to multiple particle systems, but it
  needs an extended uncertainty principle that involves many particles. An
  extension that can be experimentally examined is:

  <\axiom>
    [<with|color|red|Uncertainty Principle of Many
    Particles?>]<label|axiom:uncert-ext> In a multiple particle quantum
    system, given a wavefunction <math|f> <with|color|dark green|such that
    <math|Var<rsub|f><around*|[|x<rsub|i><around*|(|0|)>|]>> is small enough
    for each <math|i>-th particle>, the variances of position and of velocity
    have the relation

    <\equation*>
      \<Delta\>x<rsub|i>\<Delta\>v<rsub|i>\<assign\><sqrt|Var<rsub|f><around*|[|x<rsub|i><around*|(|t|)>|]>
      Var<rsub|f><around*|[|v<rsub|i><around*|(|t|)>|]>>\<sim\>\<hbar\>/<around*|(|2m<rsub|i>|)>,
    </equation*>

    where <math|m<rsub|i>> is the mass of the <math|i>-th particle, and
    <math|\<hbar\>> is the reduced Planck's constant.
  </axiom>

  The emphasized part deserves an explanation. At time <math|t=0> particles
  are \Pprepared\Q (in quantum mechanics, this can be made by measurement) to
  be localized. It then leads to a great momentum. When the momenta of
  particles are large enough, the scattering cross-sections will be small so
  that the interactions between particles are negligible. Then, we get an
  extension of uncertainty principle from single particle system to that
  involves many particles. We can examine this effect in experiments, and use
  it as an axiom. Then, we obtain the same result as before for each
  particle, except for the differences in mass.

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

  <\equation*>
    h<rsub|n><around*|(|x,x<rsub|0>|)>=<frac|1|n!><big|prod><rsub|i=1><rsup|n><around*|(|x<rsup|\<alpha\><rsub|i>>-x<rsub|0><rsup|\<alpha\><rsub|i>>|)>\<times\><big|int><rsub|0><rsup|1>\<mathd\><around*|(|t<rsup|n>|)>
    <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>f|)><around*|(|x+t<around*|(|x<rsub|0>-x|)>|)>.
  </equation*>
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
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|8|7>>
    <associate|auto-11|<tuple|9|7>>
    <associate|auto-12|<tuple|9.1|8>>
    <associate|auto-13|<tuple|9.2|9>>
    <associate|auto-14|<tuple|9.3|10>>
    <associate|auto-15|<tuple|9.4|10>>
    <associate|auto-16|<tuple|A|10>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|2|1>>
    <associate|auto-5|<tuple|3|1>>
    <associate|auto-6|<tuple|4|2>>
    <associate|auto-7|<tuple|5|3>>
    <associate|auto-8|<tuple|6|4>>
    <associate|auto-9|<tuple|7|5>>
    <associate|axiom:local|<tuple|3|5>>
    <associate|axiom:prob|<tuple|1|1>>
    <associate|axiom:sup|<tuple|2|2>>
    <associate|axiom:uncert|<tuple|4|8>>
    <associate|axiom:uncert-ext|<tuple|5|10>>
    <associate|eq:action|<tuple|8|4>>
    <associate|eq:hamiltonian|<tuple|5|3>>
    <associate|eq:kmanalogy|<tuple|11|5>>
    <associate|eq:moment|<tuple|9|4>>
    <associate|eq:momentexpansion|<tuple|12|5>>
    <associate|eq:pathint|<tuple|6|4>>
    <associate|eq:probtoself|<tuple|2|2>>
    <associate|eq:r-fourier|<tuple|4|3>>
    <associate|eq:transexp|<tuple|10|5>>
    <associate|equ:superposition|<tuple|1|2>>
    <associate|footnote-1|<tuple|1|2>>
    <associate|footnote-2|<tuple|2|3>>
    <associate|footnote-3|<tuple|3|8>>
    <associate|footnote-4|<tuple|4|9>>
    <associate|footnote-5|<tuple|5|9>>
    <associate|footnr-1|<tuple|1|2>>
    <associate|footnr-2|<tuple|2|3>>
    <associate|footnr-3|<tuple|3|8>>
    <associate|footnr-4|<tuple|4|9>>
    <associate|footnr-5|<tuple|5|9>>
    <associate|section:Hermitianity on Moments|<tuple|8|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Conventions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Abbreviations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Probability
      Interpretation and Wavefunction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Superposition
      Principle and Time Evolution> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Analytic
      Schwartz Space Is Dense in Square-Integrable Space>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Path
      Integral Formalism> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Expansions
      of Kernel and of Hamiltonian> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Locality
      Truncates the Moments> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Hermitianity
      on the Moments of Transition Rate> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Uncertainty
      Principle> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <with|par-left|<quote|1tab>|9.1<space|2spc>Implication on Moments
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|9.2<space|2spc>When
      <with|mode|<quote|math>|N> Is Even <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|9.3<space|2spc>When
      <with|mode|<quote|math>|N> Is Odd <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1tab>|9.4<space|2spc>Generalizations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      A<space|2spc>Taylor Reminder> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>