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
  <math|A<rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|n>> to
  A<rsup|\<alpha\>>>, and <math|B<rsub|\<beta\><rsub|1>\<cdots\>\<beta\><rsub|n>>>
  to <math|B<rsub|\<beta\>>>. For example, the product
  <math|v<rsup|\<alpha\><rsub|1>>*\<times\>\<cdots\>\<times\>*v<rsup|\<alpha\><rsub|n>>>
  can be abbreviated as <math|v<rsup|\<alpha\>>>.

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
  where the operation <math|L> is linear.<\footnote>
    You may wonder why it is not <math|<around*|(|\<partial\><rsup|2>\<varphi\>/\<partial\>t<rsup|2>|)>=L<around*|(|\<varphi\>|)>>
    instead, which is linear in wavefunction too. If so, wavefunction at a
    given time cannot fully characterize the system at that time, just like
    knowing the particle position at time <math|t> is insufficient for
    predicting the subsequent position at <math|<around*|(|t+\<mathd\>t|)>>
    in classical physics, for which velocity or momentum is also essential.
    But just like the time evolution of a classical system at a given time is
    fully characterized by the phase at that time, so that the (Hamiltonian)
    dynamics is first order in time derivative, wavefunction has fully
    characterized a quantum system (claimed in axiom <reference|axiom:prob>)
    so that its time evolution is first order in time derivative too.
  </footnote> Mathematically, linearity imports a kernel
  <math|r:\<bbb-R\><rsup|d>\<times\>\<bbb-R\><rsup|d>\<rightarrow\>\<bbb-C\>>
  such that

  <\equation>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    r<around*|(|x,y|)>\<varphi\><around*|(|y,t|)>.<label|equ:superposition>
  </equation>

  The right hand side can be seen as a generalization of linear
  transformation in <math|\<bbb-R\><rsup|n>> like vector-matrix product
  <math|<big|sum><rsub|j>r<rsub|i j> \<varphi\><rsub|j>>. The imaginary
  <math|\<mathi\>> is employed for convenience.

  A direct result of probability interpretation (axiom
  <reference|axiom:prob>) is that probabilistic density shall be normalized.
  Namely, for any wave-function <math|\<varphi\>> and any
  <math|t\<in\>\<bbb-R\>>, we shall have

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
  equation <reference|equ:superposition> (and its complex conjugation),

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

  <section|Wavefunction Is Rapidly Decreasing and Entire>

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
  the (complex) rapidly decreasing functions. <strong|Rapidly decreasing
  function> is a smooth function <math|f:\<bbb-R\><rsup|d>\<rightarrow\>\<bbb-C\>>
  that decays \Pexponentially fast\Q at infinity. Precisely, for any
  <math|m>-order polynomial <math|P<rsub|m>> and any <math|m>-order partial
  derivative <math|\<partial\><rsup|n>>,<\footnote>
    For example, <math|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><rsup|2>>
    is <math|3>-order partial derivative, and
    <math|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><rsup|2>\<partial\><rsub|\<gamma\>><rsup|9>>
    is <math|12>-order.
  </footnote> with integers <math|m,n\<geqslant\>0>, we have

  <\equation*>
    lim<rsub|<around*|\<\|\|\>|x|\<\|\|\>>\<rightarrow\>\<infty\>><around*|\||P<rsub|m><around*|(|x|)>\<partial\><rsup|n>f<around*|(|x|)>|\|>=0.
  </equation*>

  Fourier transform on a rapidly decreasing function results in a rapidly
  decreasing function.<\footnote>
    This was first found by Laurent Schwartz in 1949, in his paper \PThéorie
    des distributions et transformation de Fourier\Q. The space of rapidly
    decreasing functions is now called <strong|Schwartz space>, denoted by
    <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>. Thus, Fourier transform
    is a linear automorphism in Schwartz space.
  </footnote> Further, a function that is <em|everywhere> consistent with its
  Taylor series is <strong|entire> (shall not confuse with the entire
  function in complex analysis, where the domain is complex space). It
  indicates that we shall further restrict wavefunctions to be entire. Denote
  <math|\<cal-S\><rsub|E><around*|(|\<bbb-R\><rsup|d>|)>> as the collection
  of all the rapidly decreasing entire functions.

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
  <math|<around*|\||x|\|>\<rightarrow\>\<infty\>>. And the factor
  <math|<around*|[|\<cdots\>|]>> is a Taylor series. Hence, <math|f> is both
  rapidly decreasing and entire. The energy quantization emerges for ensuring
  the convergence of the series <math|<big|sum><rsub|n>a<rsub|n>x<rsup|n>>.

  Rapidly decreasing entire functions are dense in square-integrable space,
  meaning that for any <math|f\<in\>L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>
  and any <math|\<varepsilon\>\<gtr\>0>, there is a
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
  is plausible. Proof of the statement that rapidly decreasing entire
  functions are dense in square-integrable space is given in appendices
  <reference|appendix:dense>.

  <section|Path Integral Formalism><label|section:Path Integral Formalism>

  We are trying to derive a generic path integral formalism. Given a small
  <math|\<Delta\>t\<gtr\>0>, time evolution (equation
  <reference|equ:superposition>) gives

  <\equation*>
    \<varphi\><around*|(|x,t+\<Delta\>t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y<around*|[|\<delta\><around*|(|x-y|)>-\<mathi\>
    r<around*|(|x,y|)>\<Delta\>t|]> \<varphi\><around*|(|y,t|)>+\<omicron\><around*|(|\<Delta\>t|)>.
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
    exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)><wide|r|^><around*|(|k,y|)>,<label|eq:r-fourier>
  </equation>

  in which<\footnote>
    Indeed, by inserting equation <reference|eq:hamiltonian> into equation
    <reference|eq:r-fourier>, we get

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

    which goes back to <math|r<around*|(|x,y|)>>, indicating that equations
    <reference|eq:r-fourier> and <reference|eq:hamiltonian> are consistent.
    <with|color|red|But, before Fourier transform, we have to prove that
    <math|r> can be approximated by rapidly decreasing functions.>
  </footnote> <\footnote>
    Alternatively, we can define

    <\equation>
      <wide|r|\<check\>><around*|(|x,k|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
      exp<around*|(|-\<mathi\>k<around*|(|x-y|)>|)>
      r<around*|(|x,y|)>.<label|eq:r-fourier-alt>
    </equation>

    Thus,

    <\equation*>
      r<around*|(|x,y|)>=<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
      exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)><wide|r|\<check\>><around*|(|x,k|)>.
    </equation*>

    Indeed, plugging <math|<wide|r|\<check\>><around*|(|x,k|)>> into the
    right hand side of <math|r<around*|(|x,y|)>>,

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

    which goes back to <math|r<around*|(|x,y|)>> again. The <math|<wide|r|^>>
    and <math|<wide|r|\<check\>>> are the Fourier transform of <math|r>
    performed on each of its arguments respectively. In fact,
    <math|<wide|r|^>> and <wide|r|\<check\>> are the same object. Indeed,
    recalling the Hermitianity of <math|r>, we have

    <\equation*>
      <wide|r|^><rsup|\<ast\>><around*|(|k,y|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
      exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)>
      r<rsup|\<ast\>><around*|(|x,y|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
      exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)>r<around*|(|y,x|)>.
    </equation*>

    Exchanging <math|x> and <math|y> makes

    <\equation*>
      <wide|r|^><rsup|\<ast\>><around*|(|k,x|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
      exp<around*|(|-\<mathi\>k<around*|(|x-y|)>|)>r<around*|(|x,y|)>,
    </equation*>

    which is just the <math|<wide|r|\<check\>><around*|(|x,k|)>>. So, we have

    <\equation>
      <wide|r|^><rsup|\<ast\>><around*|(|k,x|)>=<wide|r|\<check\>><around*|(|x,k|)>.
    </equation>

    Once again, we find that the two arguments of <math|r<around*|(|x,y|)>>
    are not independent.
  </footnote>

  <\equation>
    <wide|r|^><around*|(|k,y|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    exp<around*|(|-\<mathi\>k<around*|(|x-y|)>|)>
    r<around*|(|x,y|)>.<label|eq:hamiltonian>
  </equation>

  Then, the <math|<around*|[|\<cdots\>|]>> part is converted into exponential
  by

  <\align>
    <tformat|<table|<row|<cell|<around*|[|\<cdots\>|]>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)><around*|[|1-\<mathi\><wide|r|^><around*|(|k,y|)>\<Delta\>t|]>>>|<row|<cell|=>|<cell|<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<around*|(|x-y|)>-\<mathi\><wide|r|^><around*|(|k,y|)>\<Delta\>t|}>+\<omicron\><around*|(|\<Delta\>t|)>>>>>
  </align>

  Plugging back to <math|\<varphi\><around*|(|x,t+\<Delta\>t|)> >results in

  <\equation*>
    \<varphi\><around*|(|x,t+\<Delta\>t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<around*|(|x-y|)>-\<mathi\><wide|r|^><around*|(|k,y|)>\<Delta\>t|}>\<varphi\><around*|(|y,t|)>+\<omicron\><around*|(|\<Delta\>t|)>.
  </equation*>

  Now, we have converted the <math|<around*|[|\<cdots\>|]>> part into
  exponential, as a starting point of constructing path integral.

  After re-denoting <math|x<rsub|1>\<assign\>x>, <math|x<rsub|0>\<assign\>y>,
  <math|k<rsub|0>\<assign\>k>, it becomes

  <\equation*>
    \<varphi\><around*|(|x<rsub|1>,t+\<Delta\>t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rsub|0><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k<rsub|0>|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<rsub|0><around*|(|x<rsub|1>-x<rsub|0>|)>-\<mathi\><wide|r|^><around*|(|k<rsub|0>,x<rsub|0>|)>\<Delta\>t|}>
    \<varphi\><around*|(|x<rsub|0>,t|)>+\<omicron\><around*|(|\<Delta\>t|)>.
  </equation*>

  The same (replacing <math|x<rsub|1>> by <math|x<rsub|2>>, and
  <math|x<rsub|0>> by <math|x<rsub|1>>),

  <\equation*>
    \<varphi\><around*|(|x<rsub|2>,t+2\<Delta\>t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rsub|1><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k<rsub|1>|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<rsub|1><around*|(|x<rsub|2>-x<rsub|1>|)>-\<mathi\><wide|r|^><around*|(|k<rsub|1>,x<rsub|1>|)>\<Delta\>t|}>
    \<varphi\><around*|(|x<rsub|1>,t+\<Delta\>t|)>+\<omicron\><around*|(|\<Delta\>t|)>.
  </equation*>

  By inserting <math|\<varphi\><around*|(|x<rsub|1>,t+\<Delta\>t|)>>, we find

  <\align>
    <tformat|<table|<row|<cell|\<varphi\><around*|(|x<rsub|2>,t+2\<Delta\>t|)>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rsub|1><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k<rsub|1>|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<rsub|1><around*|(|x<rsub|2>-x<rsub|1>|)>-\<mathi\><wide|r|^><around*|(|k<rsub|1>,x<rsub|1>|)>\<Delta\>t|}>\<times\>>>|<row|<cell|\<times\>>|<cell|<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rsub|0><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k<rsub|0>|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<rsub|0><around*|(|x<rsub|1>-x<rsub|0>|)>-\<mathi\><wide|r|^><around*|(|k<rsub|0>,x<rsub|0>|)>\<Delta\>t|}>
    \<varphi\><around*|(|x<rsub|0>,t|)>>>|<row|<cell|>|<cell|+\<omicron\><around*|(|\<Delta\>t|)>.>>>>
  </align>

  After repeating this <math|N> times, we arrive at

  <\equation>
    \<varphi\><around*|(|x<rsub|N>,t+N\<Delta\>t|)>=<big|int>D<around*|(|k,x|)>
    exp<around*|(|\<mathi\>S<around*|(|k,x|)>|)>\<varphi\><around*|(|x<rsub|0>,t|)>+\<omicron\><around*|(|\<Delta\>t|)>,<label|eq:pathint>
  </equation>

  in which

  <\equation>
    <big|int>D<around*|(|k,x|)>\<assign\><big|prod><rsub|i=0><rsup|N-1><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k<rsub|i>|<around*|(|2\<mathpi\>|)><rsup|d>>*<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rsub|i>
  </equation>

  and

  <\equation>
    S<around*|(|k,x|)>\<assign\><big|sum><rsub|i=0><rsup|N-1>\<Delta\>t<around*|[|k<rsub|i><around*|(|<frac|x<rsub|i+1>-x<rsub|i>|\<Delta\>t>|)>-<wide|r|^><around*|(|k<rsub|i>,x<rsub|i>|)>|]>.<label|eq:action>
  </equation>

  If we recognize <math|<around*|(|x<rsub|i+1>-x<rsub|i>|)>/\<Delta\>t> as
  the velocity <math|<wide|x|\<dot\>><around*|(|t<rsub|i>|)>>, then
  <math|S<around*|(|k,x|)>> can be seen as the Legendre transform
  <math|<big|int><around*|[|p<around*|(|t|)><wide|x|\<dot\>><around*|(|t|)>-H<around*|(|p<around*|(|t|)>,x<around*|(|t|)>|)>|]>\<mathd\>t>,
  in which <with|color|dark green|<em|<math|k> is analogy to momentum
  <math|p> and <math|<wide|r|^><around*|(|k,x|)>> plays the role of
  Hamiltonian <math|H<around*|(|p,x|)>>>>.

  <section|From Integral to Differential><label|section:Expanding Kernel as
  Generalized Function>

  Given a \Ptest function\Q <math|\<psi\>\<in\>\<cal-S\><rsub|E><around*|(|\<bbb-R\><rsup|d>|)>>,
  we can calculate its \Pinner product\Q with time evolution (equation
  <reference|equ:superposition>), as

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x\<psi\><around*|(|x|)><around*|[|\<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>|]>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    \<psi\><around*|(|x|)>r<around*|(|x,y|)>\<varphi\><around*|(|y,t|)>.
  </equation*>

  In the right hand side, Taylor expanding <math|\<psi\>> at <math|y> makes

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x\<psi\><around*|(|x|)><around*|[|\<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>|]>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    \<partial\><rsup|n><rsub|\<alpha\>>\<psi\><around*|(|y|)><around*|(|x-y|)><rsup|\<alpha\>>r<around*|(|x,y|)>\<varphi\><around*|(|y,t|)>,
  </equation*>

  where <math|\<alpha\>\<assign\><around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>
  and <math|<around*|(|x-y|)><rsup|\<alpha\>>\<assign\><around*|(|x-y|)><rsup|\<alpha\><rsub|1>>\<times\>\<cdots\>\<times\><around*|(|x-y|)><rsup|\<alpha\><rsub|n>>>
  (recall the abbreviations). Define the <strong|moment>

  <\equation>
    R<rsub|n><rsup|\<alpha\>><around*|(|y|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    r<around*|(|x,y|)><around*|(|x-y|)><rsup|\<alpha\>>.<label|eq:moment>
  </equation>

  Then, integrating over <math|x> gives

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x\<psi\><around*|(|x|)><around*|[|\<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>|]>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    \<partial\><rsup|n><rsub|\<alpha\>>\<psi\><around*|(|y|)>R<rsup|\<alpha\>><rsub|n><around*|(|y|)>\<varphi\><around*|(|y,t|)>.
  </equation*>

  After integration by parts and then omitting the boundary (since
  <math|\<psi\>> is rapidly decreasing), we get

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y\<psi\><around*|(|y|)><around*|[|\<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|y,t|)>|]>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    \<psi\><around*|(|y|)>\<partial\><rsup|n><rsub|\<alpha\>><around*|[|R<rsup|\<alpha\>><rsub|n><around*|(|y|)>\<varphi\><around*|(|y,t|)>|]>,
  </equation*>

  where we have replaced <math|x> by <math|y> in the left hand side for
  making it clear. Since <math|\<psi\>> is an arbitrary function in
  <math|\<cal-S\><rsub|E><around*|(|\<bbb-R\><rsup|d>|)>>, we have<\footnote>
    This is a quantum analogy of the Kramers\UMoyal expansion in stochastic
    process, which has the form

    <\equation*>
      <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!>\<partial\><rsup|n><rsub|\<alpha\>><around*|[|R<rsup|\<alpha\>><rsub|n><around*|(|x|)>p<around*|(|x,t|)>|]>.
    </equation*>

    Here, the <math|p> is a probability density function that represents the
    stochastic process. Remark that the only difference between the two
    equations is the imaginary factor before temporal derivative.
  </footnote>

  <\equation>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!>\<partial\><rsup|n><rsub|\<alpha\>><around*|[|R<rsup|\<alpha\>><rsub|n><around*|(|x|)>\<varphi\><around*|(|x,t|)>|]>.<label|eq:transexp>
  </equation>

  That is, we convert the integral equation <reference|equ:superposition> to
  a differential equation. In practice, differential equation is much more
  convenient than its integral correspondence for doing calculus. In summary,
  we have three equivalent formalisms that describe the time evolution of
  wavefunction: the original integral equation <reference|equ:superposition>,
  the path integral <reference|eq:pathint>, and now the differential equation
  <reference|eq:transexp>.

  Interestingly, the Taylor expansion of the \PHamiltonian\Q
  <math|<wide|r|^><around*|(|k,y|)>>, defined by equation
  <reference|eq:hamiltonian>, also relates to the moments <math|R<rsub|n>>s.
  Directly by equation <reference|eq:hamiltonian>, we have

  <\equation*>
    <frac|\<partial\><rsup|n><wide|r|^>|\<partial\>k<rsub|\<alpha\>>><around*|(|0,y|)>=lim<rsub|k\<rightarrow\>0><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    <around*|[|<frac|\<partial\><rsup|n>|\<partial\>k<rsub|\<alpha\>>>exp<around*|(|-\<mathi\>k<around*|(|x-y|)>|)>|]>
    r<around*|(|x,y|)>=<around*|(|-\<mathi\>|)><rsup|n><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    \ r<around*|(|x,y|)><around*|(|x-y|)><rsup|\<alpha\>>.
  </equation*>

  The integral is recognized as <math|R<rsub|n><rsup|\<alpha\>><around*|(|y|)>>.
  So, we find <math|<around*|(|-\<mathi\>|)><rsup|n>R<rsub|n><rsup|\<alpha\>><around*|(|y|)>>s
  the Taylor coefficients of <math|<wide|r|^><around*|(|k,y|)>> expanded by
  <math|k> at its origin. Namely,<\footnote>
    <with|color|red|But, we have to prove that
    <math|<wide|r|^><around*|(|k,y|)>> is entire on <math|k>, so that its
    Taylor series converges to itself.>
  </footnote>

  <\equation>
    <wide|r|^><around*|(|k,y|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|n>|n!>R<rsup|\<alpha\>><rsub|n><around*|(|y|)>k<rsub|\<alpha\>>,<label|eq:momentexpansion>
  </equation>

  where <math|k<rsub|\<alpha\>>\<assign\><around*|(|k<rsub|\<alpha\><rsub|1>>\<times\>\<cdots\>\<times\>k<rsub|\<alpha\><rsub|n>>|)>>
  as usual. Again, the details of <math|S<around*|(|k,x|)>> (defined in
  equation <reference|eq:pathint>) can be completely determined by the
  moments <math|R<rsub|n>>s.

  So, consider the traditional Hamiltonian
  <math|<wide|r|^><around*|(|x,p|)>=p<rsup|2>/<around*|(|2m|)>+V<around*|(|x|)>>,
  all <math|R<rsub|n>>s vanish except for
  <math|R<rsub|0><around*|(|x|)>=V<around*|(|x|)>> and
  <math|R<rsub|2><around*|(|x|)>=-1/m>. Equation <reference|eq:transexp>
  implies

  <\equation>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=-<frac|1|2m>\<nabla\><rsup|2>\<varphi\><around*|(|x,t|)>+V<around*|(|x|)>\<varphi\><around*|(|x,t|)>,
  </equation>

  which is exactly the Schr<wide|o|\<ddot\>>dinger equation (in the natural
  units where Planck's constant <math|\<hbar\>=1>).

  <section|Locality Truncates the Moments><label|section:Locality Truncates
  the Moments>

  We then introduce the third axiom about locality, and discuss what it will
  induce.

  <\axiom>
    [Locality]<label|axiom:local> Time evolution of quantum system is local.
  </axiom>

  Shall not confuse time evolution with collapse, which is proven to be
  non-local. Axiom <reference|axiom:local> claims that time evolution
  (equation <reference|equ:superposition>) is local. To make this clear, we
  consider an example, in which <math|R<rsub|n><around*|(|x|)>=c<rsup|n>> for
  some constant <math|c>, and set the dimension <math|d=1> for simplicity.
  Then, time evolution (equation <reference|eq:transexp>) at <math|x=0> is

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
  into equation <reference|eq:transexp>, and collecting all <math|a<rsub|m>>
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

  <section|Hermitianity on the Moments><label|section:Hermitianity on
  Moments>

  The complex conjugation of moment is given by

  <\equation*>
    <around*|(|R<rsub|n><rsup|\<alpha\>>|)><rsup|\<ast\>><around*|(|y|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    r<rsup|\<ast\>><around*|(|x,y|)><around*|(|x-y|)><rsup|\<alpha\>>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    r<around*|(|y,x|)><around*|(|x-y|)><rsup|\<alpha\>>,
  </equation*>

  where we have inserted the Hermitian condition
  <math|r<rsup|\<ast\>><around*|(|x,y|)>=r<around*|(|y,x|)>>. Exchanging
  <math|x> and <math|y> makes

  <\equation*>
    <around*|(|R<rsub|n><rsup|\<alpha\>>|)><rsup|\<ast\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    r<around*|(|x,y|)><around*|(|y-x|)><rsup|\<alpha\>>=<around*|(|-1|)><rsup|n><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    r<around*|(|x,y|)><around*|(|x-y|)><rsup|\<alpha\>>.
  </equation*>

  Remark that the integral is symmetric to
  <math|R<rsup|\<alpha\>><rsub|n><around*|(|y|)>>, which shares the same
  integrand (namely <math|r<around*|(|x,y|)><around*|(|x-y|)><rsup|\<alpha\>>>),
  but integrating over <math|x> instead. In time evolution (equation
  <reference|equ:superposition>), Taylor expanding
  <math|\<varphi\><around*|(|y,t|)>> by <math|y> at <math|x> gives

  <\equation*>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    r<around*|(|x,y|)>\<varphi\><around*|(|y,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<partial\><rsup|n><rsub|\<alpha\>>\<varphi\><around*|(|x,t|)><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    r<around*|(|x,y|)><around*|(|y-x|)><rsup|\<alpha\>>.
  </equation*>

  We recognize that the integral is nothing but the
  <math|<around*|(|R<rsub|n><rsup|\<alpha\>>|)><rsup|\<ast\>><around*|(|x|)>>.
  Hence,

  <\equation>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!><around*|(|R<rsub|n><rsup|\<alpha\>>|)><rsup|\<ast\>><around*|(|x|)>\<partial\><rsup|n><rsub|\<alpha\>>\<varphi\><around*|(|x,t|)>.
  </equation>

  Comparing with equation <reference|eq:transexp>, this equation looks
  simpler.

  Now we study the relation between <math|R<rsub|n>>s and their complex
  conjugations. Direct calculation is found tedious. Instead, we start at
  evaluating <math|<wide|r|^><rsup|\<ast\>>>. By conjugating the definition
  of <math|<wide|r|^>> (equation <reference|eq:hamiltonian>) and applying the
  Hermitianity of <math|r>, we get

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|k,y|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)> r<around*|(|y,x|)>.
  </equation*>

  Then, applying equation <reference|eq:r-fourier> to
  <math|r<around*|(|y,x|)>> gives

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|k,y|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>k<rprime|'><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>x|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\><around*|(|k-k<rprime|'>|)><around*|(|x-y|)>|}>
    <wide|r|^><around*|(|k<rprime|'>,x|)>.
  </equation*>

  Taylor expanding <math|<wide|r|^><around*|(|k<rprime|'>,x|)>> by <math|x>
  at <math|y>,

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|k,y|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>k<rprime|'><frac|\<partial\><rsup|n><wide|r|^>|\<partial\>y<rsup|\<alpha\>>><around*|(|k<rprime|'>,y|)>\<times\><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>x|<around*|(|2\<mathpi\>|)><rsup|d>>
    \ exp<around*|{|\<mathi\><around*|(|k-k<rprime|'>|)><around*|(|x-y|)>|}><around*|(|x-y|)><rsup|\<alpha\>>.
  </equation*>

  Notice the relation

  <\equation*>
    \<partial\><rsub|\<alpha\>><rsup|n>\<delta\><around*|(|\<omega\>|)>=<frac|\<partial\><rsup|n>|\<partial\>\<omega\><rsup|\<alpha\>>><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>z|<around*|(|2\<mathpi\>|)><rsup|d>>
    \ exp<around*|(|\<mathi\>\<omega\>z|)>=\<mathi\><rsup|n><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>z|<around*|(|2\<mathpi\>|)><rsup|d>>
    \ exp<around*|(|\<mathi\>\<omega\>z|)>z<rsup|\<alpha\>>.
  </equation*>

  Replacing <math|\<omega\>> by <math|<around*|(|k-k<rprime|'>|)>> and
  <math|z> by <math|<around*|(|x-y|)>>, the last integral in
  <math|<wide|r|^><rsup|\<ast\>><around*|(|k,y|)>> becomes
  <math|<around*|(|-\<mathi\>|)><rsup|n>\<partial\><rsup|n><rsub|\<alpha\>>\<delta\><around*|(|k-k<rprime|'>|)>>.
  Thus,

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|k,y|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|n>|n!><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>k<rprime|'><frac|\<partial\><rsup|n><wide|r|^>|\<partial\>y<rsup|\<alpha\>>><around*|(|k<rprime|'>,y|)>\<partial\><rsup|n><rsub|\<alpha\>>\<delta\><around*|(|k-k<rprime|'>|)>.
  </equation*>

  By integration by parts (recalling that <math|\<partial\><rsup|n>\<delta\>>
  is odd when <math|n> is odd, otherwise even) and then integrating over
  <math|k<rprime|'>>, we arrive at

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|k,y|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|n>|n!><frac|\<partial\><rsup|2n><wide|r|^>|\<partial\>k<rsub|\<alpha\>>\<partial\>y<rsup|\<alpha\>>><around*|(|k,y|)>.
  </equation*>

  Since <math|<around*|(|-\<mathi\>|)><rsup|n>R<rsub|n><around*|(|y|)>>s are
  the coefficients of Taylor expansion of <math|<wide|r|^><around*|(|k,y|)>>
  by <math|k> (equation <reference|eq:momentexpansion>), we find

  <\equation*>
    <around*|(|R<rsup|\<alpha\>><rsub|m>|)><rsup|\<ast\>><around*|(|y|)>=<around*|(|-\<mathi\>|)><rsup|m><frac|\<partial\><rsup|m><wide|r|^><rsup|\<ast\>>|\<partial\>k<rsub|\<alpha\>>><around*|(|0,y|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|m+n>|n!><frac|\<partial\><rsup|n>|\<partial\>y<rsup|\<beta\>>><frac|\<partial\><rsup|m+n><wide|r|^>|\<partial\>k<rsub|\<alpha\>>\<partial\>k<rsub|\<beta\>>><around*|(|0,y|)>.
  </equation*>

  Again, <math|>the <math|<around*|(|m+n|)>>-th coefficients of the Taylor
  expansion is <math|<around*|(|-\<mathi\>|)><rsup|m+n>R<rsub|m+n><around*|(|y|)>>,
  so

  <\equation*>
    <around*|(|R<rsup|\<alpha\>><rsub|m>|)><rsup|\<ast\>><around*|(|y|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|m+n>|n!><frac|\<partial\><rsup|n>|\<partial\>x<rsup|\<beta\>>><around*|[|<around*|(|-\<mathi\>|)><rsup|m+n>R<rsup|\<alpha\>\<beta\>><rsub|m+n><around*|(|y|)>|]>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|m+n>|n!>\<partial\><rsup|n><rsub|\<beta\>>R<rsup|\<alpha\>\<beta\>><rsub|m+n><around*|(|x|)>.
  </equation*>

  Recall that <math|R<rsub|n>=0> for any <math|n\<gtr\>N<rsub|cut>> (section
  <reference|section:Locality Truncates the Moments>), we finally arrive at

  <\equation>
    <around*|(|R<rsup|\<alpha\>><rsub|m>|)><rsup|\<ast\>><around*|(|x|)>=<big|sum><rsub|n=0><rsup|N<rsub|cut>-m><frac|<around*|(|-1|)><rsup|m+n>|n!>\<partial\><rsup|n><rsub|\<beta\>>R<rsup|\<alpha\>\<beta\>><rsub|m+n><around*|(|x|)>.
  </equation>

  It relates the moments <math|R<rsub|n>>s to their complex conjugations.

  For example, when <math|N<rsub|cut>=2>, we have
  <math|R<rsub|0><rsup|\<ast\>><around*|(|x|)>=R<rsub|0><around*|(|x|)>-\<partial\><rsub|\<alpha\>>R<rsup|\<alpha\>><rsub|1><around*|(|x|)>+<around*|(|1/2|)>\<partial\><rsup|2><rsub|\<alpha\>>R<rsup|\<alpha\>><rsub|2><around*|(|x|)>>,
  <math|<around*|(|R<rsub|1><rsup|\<alpha\>>|)><rsup|*\<ast\>><around*|(|x|)>=-R<rsub|1><rsup|\<alpha\>><around*|(|x|)>+\<partial\><rsub|\<beta\>>R<rsup|\<alpha\>\<beta\>><rsub|2><around*|(|x|)>>,
  and <math|<around*|(|R<rsub|2><rsup|\<alpha\>>|)><rsup|\<ast\>><around*|(|x|)>=R<rsup|\<alpha\>><rsub|2><around*|(|x|)>>,
  that is, <math|R<rsub|2>> is real. Specially, we have

  <\equation*>
    R<rsub|N<rsub|cut>><rsup|\<ast\>><around*|(|x|)>=<around*|(|-1|)><rsup|N<rsub|cut>>R<rsub|N<rsub|cut>><around*|(|x|)>.
  </equation*>

  That is, <math|R<rsub|N<rsub|cut>>> is real when <math|N<rsub|cut>> is
  even, otherwise purely imaginary.

  <section|Uncertainty Principle Restricts the Highest Order Moment>

  An <strong|observable> is a real function of the particle positions of a
  quantum system. A corollary of probability interpretation (axiom
  <reference|axiom:prob>) is that, given a wavefunction <math|\<varphi\>>,
  <math|<around*|\||\<varphi\><around*|(|x,t|)>|\|><rsup|2>> represents the
  probability density that the particles are found on positions <math|x> at
  time <math|t>, hence the expected value of an observable <math|F> is

  <\equation>
    \<bbb-E\><rsub|\<varphi\>><around*|[|F|]><around*|(|t|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    <around*|\||\<varphi\><around*|(|x,t|)>|\|><rsup|2>F<around*|(|x|)>,
  </equation>

  with uncertainty characterized by variance

  <\equation>
    Var<rsub|\<varphi\>><around*|[|F|]><around*|(|t|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    <around*|\||\<varphi\><around*|(|x,t|)>|\|><rsup|2><around*|[|F<around*|(|x|)>-\<bbb-E\><rsub|\<varphi\>><around*|[|F|]><around*|(|t|)>|]><rsup|2>.
  </equation>

  \;

  For a single particle system, we use <math|X> to denote the position of the
  particle, thus <math|X<around*|(|x|)>=x>. Apparently, <math|X> is an
  observable. Its uncertainty is given by

  <\equation>
    \<Delta\>X<rsup|\<alpha\>><around*|(|t|)>\<assign\><sqrt|Var<rsub|\<varphi\>><around*|[|X<rsup|\<alpha\>>|]><around*|(|t|)>>.<label|eq:deltax>
  </equation>

  Having observed the particle position at time <math|t> and
  <math|t+\<Delta\>t> subsequently, we might evaluate the velocity of the
  particle by the observed positions. But it is hard to perform, because both
  positions are random, and wavefunction can only give <em|statistical
  information>, such as expectation and variance, while for single
  measurement of an observable it says nothing.<\footnote>
    <with|color|red|Is it possible to define velocity simply by using the
    statistical information of positions?>
  </footnote> Instead, for evaluating the velocity, we have to fix the
  position of the particle at time <math|t> and evaluate the uncertainty
  caused by the position at time <math|t+\<Delta\>t>. That is, <em|the
  uncertainty induced by time evolution>. This, however, is improper because
  it makes the wavefunction of the particle ill-defined. Indeed, by fixing
  the particle at position <math|x<rsub|0>>, we must have
  <math|\<varphi\><around*|(|x,t|)>=exp<around*|(|\<mathi\>\<omega\><around*|(|x,t|)>|)><sqrt|\<delta\><around*|(|x-x<rsub|0>|)>>>
  for some real function <math|\<omega\>>. Then,
  <math|<around*|(|\<partial\>\<varphi\>/\<partial\>x|)>> is ill-defined
  because it is proportional to <math|1/<sqrt|\<delta\><around*|(|x-x<rsub|0>|)>>>
  (if viewing <math|\<delta\>> as a function on which derivative rules hold
  still), which is <math|1/0> except for <math|x=x<rsub|0>>. Instead, we have
  to consider the series of function that converge to <math|\<delta\>>
  function, such as

  <\equation*>
    \<delta\><rsub|a><around*|(|x-x<rsub|t>|)>\<assign\><around*|(|<frac|a|2\<mathpi\>>|)><rsup|d/2>exp<around*|(|-<frac|a
    x<rsup|2>|2>|)>,
  </equation*>

  where <math|a> is a positive number and
  <math|\<delta\><rsub|a>\<rightarrow\>\<delta\>> when <math|a> tends to
  infinity. Then, we have <math|\<varphi\><rsub|a><around*|(|x,t|)>=exp<around*|(|\<mathi\>\<omega\><around*|(|x,t|)>|)><sqrt|\<delta\><rsub|a><around*|(|x-x<rsub|t>|)>>>.
  Using this <math|\<varphi\><rsub|a>>, we can define the uncertainty of
  velocity caused by the uncertainty of position at time <math|t+\<Delta\>t>,
  as

  <\equation>
    \<Delta\>V<rsup|\<alpha\>><around*|(|t|)>\<assign\>lim<rsub|\<Delta\>t\<rightarrow\>0>lim<rsub|a\<rightarrow\>\<infty\>><sqrt|Var<rsub|\<varphi\><rsub|a>><around*|[|<frac|X<rsup|\<alpha\>>-\<bbb-E\><rsub|\<varphi\><rsub|a>><around*|[|X<rsup|\<alpha\>>|]><around*|(|t|)>|\<Delta\>t>|]><around*|(|t+\<Delta\>t|)>>,<label|eq:deltav>
  </equation>

  where <math|x<rsub|t>> is replaced by the observed position
  <math|\<bbb-E\><around*|[|X|]><around*|(|t|)>>.

  Have clarified the uncertainties of particle position and velocity, we can
  claim uncertainty principle as follow.

  <\axiom>
    [Uncertainty Principle of Single Particle]<label|axiom:uncert> In a
    single particle quantum system, given a wavefunction <math|\<varphi\>>,
    the uncertainties of position and of velocity have the relation

    <\equation*>
      \<Delta\>X<rsup|\<alpha\>><around*|(|t|)>\<Delta\>V<rsup|\<alpha\>><around*|(|t|)>\<sim\>\<hbar\>/<around*|(|2m|)>,
    </equation*>

    where <math|m> is the mass of the particle, and <math|\<hbar\>> is the
    reduced Planck's constant.
  </axiom>

  In the rest of this section, we investigate how uncertainty principle
  restricts further to the kernel. Without loosing generality, we set
  <math|t=0> and omit the factor <math|exp<around*|(|\<mathi\>\<omega\><around*|(|x,t|)>|)>>.
  In this situation,

  <\equation>
    \<varphi\><rsub|a><around*|(|x,0|)>=<around*|(|<frac|a|2\<mathpi\>>|)><rsup|d/4>exp<around*|(|-<frac|a
    x<rsup|2>|4>|)>.<label|eq:gaussianwavefunction>
  </equation>

  The coefficient guarantees the normalization of <math|\<varphi\><rsub|a>>,
  namely <math|<big|int>\<mathd\>x<around*|\||\<varphi\><rsub|a><around*|(|x,0|)>|\|><rsup|2>=1>.
  It has \Pstandardization\Q

  <\equation>
    \<varphi\><rsub|a><around*|(|<frac|x|<sqrt|a>>,0|)>=a<rsup|d/4>\<varphi\><rsub|1><around*|(|x,0|)>.<label|eq:standard>
  </equation>

  Since <math|\<varphi\><rsub|a>> is even function, we have

  <\equation*>
    \;
  </equation*>

  <\equation*>
    \<bbb-E\><rsub|\<varphi\><rsub|a>><around*|[|X<rsup|\<alpha\>>|]><around*|(|0|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<around*|\||\<varphi\><rsub|a><around*|(|x,0|)>|\|><rsup|2>x<rsup|\<alpha\>>=0.
  </equation*>

  Then, using the standardization, we find (using
  <math|y\<assign\><sqrt|a>x>)

  <\equation*>
    Var<rsub|\<varphi\><rsub|a>><around*|[|X<rsup|\<alpha\>>|]><around*|(|0|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<around*|\||\<varphi\><rsub|a><around*|(|x,0|)>|\|><rsup|2><around*|(|x<rsup|\<alpha\>>|)><rsup|2>=<frac|1|a><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y<around*|\||\<varphi\><rsub|1><around*|(|y,0|)>|\|><around*|(|y<rsup|\<alpha\>>|)><rsup|2>=<frac|1|a>.
  </equation*>

  Equation <reference|eq:deltax> then gives
  <math|\<Delta\>X<around*|(|0|)>=<sqrt|Var<rsub|\<varphi\><rsub|a>><around*|[|X|]><around*|(|0|)>>=<sqrt|1/a>>.

  To evaluate <math|\<Delta\>V<around*|(|0|)>>, we have to use time evolution
  equation to calculate <math|X> at time <math|\<Delta\>t>. By time evolution
  (equation <reference|eq:transexp>), we have (for brevity, we omit the
  subscript <math|cut> in <math|N<rsub|cut>>)

  <\equation*>
    \<varphi\><rsub|a><around*|(|x,\<Delta\>t|)>=\<varphi\><rsub|a><around*|(|x,0|)>-\<mathi\>\<Delta\>t<big|sum><rsub|n=0><rsup|N><frac|<around*|(|-1|)><rsup|n>|n!>\<partial\><rsup|n><rsub|\<alpha\>><around*|[|R<rsub|n><rsup|\<alpha\>><around*|(|x|)>\<varphi\><rsub|a><around*|(|x,0|)>|]>+\<cdots\>.
  </equation*>

  This expansion is too complicated. But, by noticing that
  <math|\<partial\><rsup|n>\<varphi\><rsub|a><around*|(|x,0|)>=<with|font|cal|O><around*|(|<sqrt|a>|)>>,
  as <math|a> tends to infinity, the term <math|<around*|(|-1|)><rsup|N>/N!
  R<rsub|N><rsup|\<alpha\>><around*|(|x|)>\<partial\><rsup|N><rsub|\<alpha\>>\<varphi\><rsub|a><around*|(|x,0|)>>
  will surpass all the others in the summation, and the particle becomes
  \Pfree\Q.<\footnote>
    In the traditional approach of quantum mechanics,
    <math|n\<rightarrow\>\<infty\>> indicates that the momentum is large
    (since momentum is proportional to <math|\<partial\>/\<partial\>x>), so
    the term with the highest order of momentum will dominates the time
    evolution. When the momentum is large enough, the kinetic term dominates
    Hamiltonian, the potential becomes omittable, making the particle free
    (namely, unconstrained by potential).
  </footnote> In this situation, time evolution (equation
  <reference|eq:transexp>) reduces to

  <\equation*>
    \<mathi\><frac|\<partial\>\<varphi\><rsub|a>|\<partial\>t><around*|(|x,t|)>=<frac|<around*|(|-1|)><rsup|N>|N!>
    R<rsub|N><rsup|\<alpha\>><around*|(|x|)>\<partial\><rsup|N><rsub|\<alpha\>>\<varphi\><rsub|a><around*|(|x,t|)>.
  </equation*>

  Hence, up to <math|\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>> (we will
  find that expanding to <math|\<omicron\><around*|(|\<Delta\>t|)>> is
  insufficient),

  <\align>
    <tformat|<table|<row|<cell|\<varphi\><rsub|a><around*|(|x,\<Delta\>t|)>=>|<cell|\<varphi\><rsub|a><around*|(|x,0|)>+<frac|\<partial\>\<varphi\><rsub|a>|\<partial\>t><around*|(|x,0|)>\<Delta\>t+<frac|1|2><frac|\<partial\><rsup|2>\<varphi\><rsub|a>|\<partial\>t<rsup|2>><around*|(|x,0|)>\<Delta\>t<rsup|2>+\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>>>|<row|<cell|=>|<cell|\<varphi\><rsub|a><around*|(|x,0|)>-\<mathi\><frac|<around*|(|-1|)><rsup|N>|N!>
    R<rsub|N><rsup|\<alpha\>><around*|(|x|)>\<partial\><rsup|N><rsub|\<alpha\>>\<varphi\><rsub|a><around*|(|x,0|)>\<Delta\>t-<frac|\<mathi\>|2><frac|<around*|(|-1|)><rsup|N>|N!>
    R<rsub|N><rsup|\<alpha\>><around*|(|x|)>\<partial\><rsup|N><rsub|\<alpha\>><frac|\<partial\>\<varphi\><rsub|a>|\<partial\>t><around*|(|x,0|)>\<Delta\>t<rsup|2>+\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>.>>>>
  </align>

  Inserting <math|<around*|(|\<partial\>\<varphi\><rsub|a>/\<partial\>t|)>>
  and considering the surpassing again, we get

  <\align>
    <tformat|<table|<row|<cell|\<varphi\><rsub|a><around*|(|x,\<Delta\>t|)>=>|<cell|\<varphi\><rsub|a><around*|(|x,0|)>-\<mathi\><frac|<around*|(|-1|)><rsup|N>|N!>
    R<rsub|N><rsup|\<alpha\>><around*|(|x|)>\<partial\><rsup|N><rsub|\<alpha\>>\<varphi\><rsub|a><around*|(|x,0|)>\<Delta\>t>>|<row|<cell|->|<cell|<frac|1|2><around*|[|<frac|<around*|(|-1|)><rsup|N>|N!>|]><rsup|2>R<rsup|\<alpha\>><rsub|N><around*|(|x|)>R<rsup|\<beta\>><rsub|N><around*|(|x|)>\<partial\><rsup|N><rsub|\<alpha\>>\<partial\><rsup|N><rsub|\<beta\>>\<varphi\><rsub|a><around*|(|x,0|)>\<Delta\>t<rsup|2>+\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>.>>>>
  </align>

  This is sufficient for our task.

  We first calculate the expectation of velocity at <math|t=0>, which is
  given by

  <\equation*>
    V<rsup|\<alpha\>><around*|(|0|)>\<assign\>lim<rsub|\<Delta\>t\<rightarrow\>0>lim<rsub|a\<rightarrow\>\<infty\>>\<bbb-E\><rsub|\<varphi\><rsub|a>><around*|[|<frac|X<rsup|\<alpha\>>-\<bbb-E\><rsub|\<varphi\><rsub|a>><around*|[|X<rsup|\<alpha\>>|]><around*|(|0|)>|\<Delta\>t>|]><around*|(|\<Delta\>t|)>.
  </equation*>

  Inserting <math|\<varphi\><rsub|a><around*|(|x,\<Delta\>t|)>> gives

  <\equation*>
    V<rsup|\<alpha\>><around*|(|0|)>=lim<rsub|a\<rightarrow\>\<infty\>><frac|2<around*|(|-1|)><rsup|N>|N!><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    \<varphi\><rsub|a><around*|(|x,0|)>\<partial\><rsup|N><rsub|\<beta\>>\<varphi\><rsub|a><around*|(|x,0|)>Im<around*|[|R<rsup|\<beta\>><rsub|N><around*|(|x|)>|]>
    x<rsup|\<alpha\>>
  </equation*>

  When <math|N> is even, <math|R<rsub|N>> is real (a result in section
  <reference|section:Hermitianity on Moments>), we find
  <math|V<around*|(|0|)>=0>. But when <math|N> is odd, <math|R<rsub|N>> is
  purely imaginary. In this case, <math|V<rsup|\<alpha\>><around*|(|0|)>> may
  not vanish (instead it diverges as <math|a> tends to infinity), leading to
  a violation of parity symmetry, because the velocity has a favored
  direction even though the distribution (or wavefunction) has not. So, from
  now on, we only consider when <math|N> is even.

  Now, we are to calculate <math|\<Delta\>V<around*|(|0|)>>. For any random
  variable <math|R>, we have the formula

  <\equation*>
    Var<around*|[|R|]>=\<bbb-E\><around*|[|<around*|(|R-\<bbb-E\><around*|[|R|]>|)><rsup|2>|]>=\<bbb-E\><around*|[|R<rsup|2>-2\<bbb-E\><around*|[|R|]>R-\<bbb-E\><rsup|2><around*|[|R|]>|]>=\<bbb-E\><around*|[|R<rsup|2>|]>-\<bbb-E\><rsup|2><around*|[|R|]>.
  </equation*>

  Applying to <math|\<Delta\>V<around*|(|0|)>> (equation
  <reference|eq:deltav>), we find

  <\equation*>
    <around*|[|\<Delta\>V<rsup|\<alpha\>><around*|(|0|)>|]><rsup|2>=lim<rsub|\<Delta\>t\<rightarrow\>0>lim<rsub|a\<rightarrow\>\<infty\>><frac|\<bbb-E\><rsub|\<varphi\><rsub|a>><around*|[|<around*|(|X<rsup|\<alpha\>>|)><rsup|2>|]><around*|(|\<Delta\>t|)>|\<Delta\>t<rsup|2>>,
  </equation*>

  where we have used <math|\<bbb-E\><rsub|\<varphi\><rsub|a>><around*|[|X<rsup|\<alpha\>>|]><around*|(|0|)>=V<rsup|\<alpha\>><around*|(|0|)>=0>
  when <math|N> is even. Since <math|R<rsub|N>> has been real,

  <\small>
    <\align>
      <tformat|<table|<row|<cell|\<bbb-E\><rsub|\<varphi\><rsub|a>><around*|[|<around*|(|X<rsup|\<alpha\>>|)><rsup|2>|]><around*|(|\<Delta\>t|)>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
      \<varphi\><rsub|a><rsup|\<ast\>><around*|(|x,\<Delta\>t|)>\<varphi\><rsub|a><around*|(|x,\<Delta\>t|)><around*|(|x<rsup|\<alpha\>>|)><rsup|2>>>|<row|<cell|=>|<cell|<frac|1|a>+<around*|(|<frac|1|N!>|)><rsup|2><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<around*|[|\<partial\><rsup|N><rsub|\<beta\>>\<varphi\><rsub|a><around*|(|x,0|)>\<partial\><rsup|N><rsub|\<gamma\>>\<varphi\><rsub|a><around*|(|x,0|)>-<frac|1|2>\<varphi\><rsub|a><around*|(|x,0|)>\<partial\><rsub|\<beta\>><rsup|N>\<partial\><rsub|\<gamma\>><rsup|N>\<varphi\><rsub|a><around*|(|x,0|)>|]>R<rsub|N><rsup|\<beta\>><around*|(|x|)>R<rsub|N><rsup|\<gamma\>><around*|(|x|)><around*|(|x<rsup|\<alpha\>>|)><rsup|2>\<Delta\>t<rsup|2>,>>>>
    </align>
  </small>

  up to <math|\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>>. Then, we get

  <\equation*>
    <around*|[|\<Delta\>V<rsup|\<alpha\>><around*|(|0|)>|]><rsup|2>=<around*|(|<frac|1|N!>|)><rsup|2><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<around*|[|\<partial\><rsup|N><rsub|\<beta\>>\<varphi\><rsub|a><around*|(|x,0|)>\<partial\><rsup|N><rsub|\<gamma\>>\<varphi\><rsub|a><around*|(|x,0|)>-<frac|1|2>\<varphi\><rsub|a><around*|(|x,0|)>\<partial\><rsub|\<beta\>><rsup|N>\<partial\><rsub|\<gamma\>><rsup|N>\<varphi\><rsub|a><around*|(|x,0|)>|]>R<rsub|N><rsup|\<beta\>><around*|(|x|)>R<rsub|N><rsup|\<gamma\>><around*|(|x|)><around*|(|x<rsup|\<alpha\>>|)><rsup|2>,
  </equation*>

  up to <math|<with|font|cal|O><around*|(|1/a|)>>. As we have expected, the
  terms that involve the partial derivatives of <math|\<varphi\><rsub|a>>
  share the <em|same> (highest) order of <math|a>, surpassing all the terms
  that we have neglected (which have lower order of <math|a>) as <math|a>
  tends to infinity. By standardization (equation <reference|eq:standard>)
  and letting <math|y\<assign\><sqrt|a>x>,

  <\small>
    <\equation*>
      <around*|[|\<Delta\>V<rsup|\<alpha\>><around*|(|0|)>|]><rsup|2>=a<rsup|N-1><around*|(|<frac|1|N!>|)><rsup|2><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y<around*|[|\<partial\><rsup|N><rsub|\<beta\>>\<varphi\><rsub|1><around*|(|y,0|)>\<partial\><rsup|N><rsub|\<gamma\>>\<varphi\><rsub|1><around*|(|y,0|)>-<frac|1|2>\<varphi\><rsub|1><around*|(|y,0|)>\<partial\><rsub|\<beta\>><rsup|N>\<partial\><rsub|\<gamma\>><rsup|N>\<varphi\><rsub|1><around*|(|y,0|)>|]>R<rsub|N><rsup|\<beta\>><around*|(|<frac|y|<sqrt|a>>|)>R<rsub|N><rsup|\<gamma\>><around*|(|<frac|y|<sqrt|a>>|)><around*|(|y<rsup|\<alpha\>>|)><rsup|2>.
    </equation*>
  </small>

  To satisfy uncertainty principle (axiom <reference|axiom:uncert>),
  <math|<around*|[|\<Delta\>V<rsup|\<alpha\>><around*|(|0|)>|]><rsup|2>> has
  to be proportional to <math|a>, so that
  <math|\<Delta\>X<around*|(|0|)>\<Delta\>V<around*|(|0|)>> is independent of
  <math|a>. This is possible only when<\footnote>
    <with|color|red|In fact, any Taylor series with a lower cut-off at order
    <math|N-2> is valid, such as <math|R<rsub|N><around*|(|x|)>=c<rsub|1>x<rsup|N-2>+c<rsub|2>x<rsup|N-1>+\<cdots\>>,
    because these higher order terms contribute
    <math|<with|font|cal|O><around*|(|1/a|)>> to <math|\<Delta\>X\<Delta\>V>,
    which vanishes as <math|a> tends to infinity. In this situation,
    uncertainty principle can only perceive and restrict <math|c<rsub|1>>
    only.>
  </footnote>

  <\equation>
    R<rsub|N><rsup|\<alpha\>><around*|(|x|)>\<propto\>x<rsup|N-2>.
  </equation>

  In other words, all <math|\<partial\><rsup|n><rsub|\<beta\>>R<rsup|\<alpha\>><rsub|N><around*|(|0|)>>s
  are vanishing except for <math|n=N-2>. Hence,

  <\equation*>
    <around*|[|\<Delta\>V<rsup|\<alpha\>><around*|(|0|)>|]><rsup|2>=<frac|a|4>\<times\>\<partial\><rsup|N-2><rsub|\<sigma\>>R<rsub|N><rsup|\<beta\>><around*|(|0|)>\<partial\><rsup|N-2><rsub|\<omega\>>R<rsub|N><rsup|\<gamma\>><around*|(|0|)>\<times\>I<rsub|N><rsup|\<alpha\>\<beta\>\<gamma\>\<sigma\>\<omega\>>,
  </equation*>

  where the constant

  <\equation*>
    I<rsub|N><rsup|\<alpha\>\<beta\>\<gamma\>\<sigma\>\<omega\>>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y<around*|[|\<partial\><rsup|N><rsub|\<beta\>>\<varphi\><rsub|1><around*|(|y,0|)>\<partial\><rsup|N><rsub|\<gamma\>>\<varphi\><rsub|1><around*|(|y,0|)>-<frac|1|2>\<varphi\><rsub|1><around*|(|y,0|)>\<partial\><rsub|\<beta\>><rsup|N>\<partial\><rsub|\<gamma\>><rsup|N>\<varphi\><rsub|1><around*|(|y,0|)>|]>y<rsup|\<alpha\>>y<rsup|\<alpha\>>y<rsup|\<sigma\>>y<rsup|\<omega\>>.
  </equation*>

  <with|color|dark green|So, uncertainty principle restricts the highest
  order moment to be an explicit power function. But, it cannot say anything
  about the <math|R<rsub|n>>s with <math|n\<less\>N> because, as <math|a>
  tends to infinity, which is essential for defining uncertainty principle,
  these <math|R<rsub|n>>s become \Pnon-perceptible\Q.>

  The specific case is <math|N=2> in which <math|R<rsub|N>> is a constant.
  This corresponds to the canonical situation in physics. To determine this
  constant in the simplest case where dimension <math|d=1>, we have

  <\equation*>
    \<Delta\>V<around*|(|0|)>=<frac|<around*|\||R<rsub|2>|\|>|2><sqrt|<frac|23|32>a>,
  </equation*>

  where the integral is evaluated by computer.<\footnote>
    We use Wolfram Mathematica to compute the integral <math|I<rsub|2>>. We
    first input <math|\<varphi\><rsub|1>> (re-denoted by <math|f>) as

    <\verbatim-code>
      f[x_] := (2*Pi)^(-1/4)*Exp[-*x^2/4];
    </verbatim-code>

    Then, compute the target integral as

    <\verbatim-code>
      I2 = Simplify[Integrate[(D[f[x], {x, 2}]^2 - f[x]* D[f[x], {x, 4}] / 2)
      * x^2, {x, -Infinity, Infinity}]];
    </verbatim-code>
  </footnote> Then, by uncertainty principle,
  <math|\<Delta\>X<around*|(|0|)>\<Delta\>V<around*|(|0|)>=<sqrt|23/32><around*|\||R<rsub|2>|\|>/2\<sim\>\<hbar\>/<around*|(|2m|)>>,
  implying

  <\equation>
    <around*|\||R<rsub|2>|\|>\<sim\><sqrt|<frac|32|23>><frac|\<hbar\>|m>\<approx\>1.18
    <frac|\<hbar\>|m>.
  </equation>

  This is consistent with the traditional Hamiltonian where
  <math|R<rsub|2>=-\<hbar\>/m>.

  <section|From Quantum to Classical (TODO)>

  Uncertainty principle (axiom <reference|axiom:uncert>) is the unique axiom
  which gives raise to the <em|universal> Planck's constant <math|\<hbar\>>.
  Observing uncertainty principle, we can absorb \<hbar\> by re-scaling
  coordinates. Explicitly, by re-defining (or replacing)
  <math|x<rprime|'>\<assign\>x/\<hbar\>> and
  <math|t<rprime|'>\<assign\>t/\<hbar\>>, hence velocity
  <math|v<rprime|'>=\<mathd\>x<rprime|'>/\<mathd\>t<rprime|'>=\<mathd\>x/\<mathd\>t=v>,
  uncertainty principle turns to be

  <\equation*>
    \<Delta\>X<rprime|'><rsup|\<alpha\>><around*|(|t<rprime|'>|)>\<Delta\>V<rprime|'><rsup|\<alpha\>><around*|(|t<rprime|'>|)>\<sim\>1/<around*|(|2m|)>.
  </equation*>

  Here, we do not absorb the other constant, the mass <math|m>, because it is
  not universal: different particles may have different masses. Under this
  re-scaled coordinates, we cannot \Pperceive\Q <math|\<hbar\>> at all, which
  hence will not appear in time evolution. Namely, using
  <math|<around*|(|x<rprime|'>,t<rprime|'>|)>>-coordinates, <math|\<hbar\>>
  will be absent in the three equivalent formalisms of time evolution
  (equations <reference|equ:superposition>, <reference|eq:pathint>, and
  <reference|eq:transexp>). By converting back to
  <math|<around*|(|x,t|)>>-coordinates, for example, equation
  <reference|eq:transexp> turns to be

  \;

  <\equation>
    \<mathi\>\<hbar\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<hbar\>|)><rsup|n>|n!>\<partial\><rsup|n><rsub|\<alpha\>><around*|[|R<rsup|\<alpha\>><rsub|n><around*|(|x|)>\<varphi\><around*|(|x,t|)>|]>,<label|eq:transexp-hbar>
  </equation>

  where the <math|R<rsub|n>>s depend on <math|\<hbar\>> in such a way that
  <math|R<rsub|n><around*|(|x|)>=R<rprime|'><rsub|n><around*|(|x/\<hbar\>|)>>
  for some <math|\<hbar\>>-independent <math|R<rprime|'><rsub|n>>. Also for
  path integral, we have

  <\equation>
    \<varphi\><around*|(|x<rsub|N>,t+N\<Delta\>t|)>=<big|int>D<around*|(|k,x|)>
    exp<around*|(|<frac|\<mathi\>|\<hbar\>>S<around*|(|k,x|)>|)>\<varphi\><around*|(|x<rsub|0>,t|)>+\<omicron\><around*|(|\<Delta\>t|)>,<label|eq:pathint-hbar>
  </equation>

  where, by inserting the expansion <reference|eq:momentexpansion> into the
  <math|S<around*|(|k,x|)>> given by equation <reference|eq:action>,

  <\equation*>
    S<around*|(|k,x|)>=<big|sum><rsub|i=0><rsup|N-1>\<Delta\>t<around*|[|k<rsub|i><around*|(|<frac|x<rsub|i+1>-x<rsub|i>|\<Delta\>t>|)>-<big|sum><rsub|n=0><rsup|N<rsub|cut>><frac|<around*|(|-\<mathi\>|)><rsup|n>|n!>R<rsup|\<alpha\>><rsub|n><around*|(|x<rsub|i>|)><around*|(|k<rsub|i>|)><rsub|\<alpha\>>|]>.
  </equation*>

  The <math|1/\<hbar\>> in equation <reference|eq:pathint-hbar> is extracted
  from the <math|\<Delta\>t> factor in <math|S<around*|(|k,x|)>>. Hence,
  \<hbar\> is absent in <math|S<around*|(|k,x|)>> except for in the
  <math|R<rsub|n>>s.

  The re-scaling of coordinates indicates that Planck's constant
  <math|\<hbar\>> characterizes the scale of quantum world. The quantum
  scales for both space and time have the order of <math|\<hbar\>>. And we
  cannot observe the quantum world directly using naked eyes because
  <math|\<hbar\>> is an extremely small number. To go back to classical
  world, we zoom out. While doing so, the quantum scale becomes smaller and
  smaller. In mathematics, we can regard going back to classical world as
  tending <math|\<hbar\>> to zero. Stationary phase approximation (see
  appendix <reference|appendix:Stationary Phase Approximation>) claims that,
  as <math|\<hbar\>> tends to zero, path integral is dominated by the
  \Ppath\Q that has \Pstationary phase\Q, that is the
  <math|<around*|(|k<rsub|\<star\>>,x<rsub|\<star\>>|)>> such that

  <\equation*>
    <frac|\<partial\>S|\<partial\><around*|(|k<rsub|i>|)><rsub|\<alpha\>>><around*|(|k<rsub|\<star\>>,x<rsub|\<star\>>|)>=<frac|\<partial\>S|\<partial\>x<rsub|i><rsup|\<alpha\>>><around*|(|k<rsub|\<star\>>,x<rsub|\<star\>>|)>=0,
  </equation*>

  for each <math|i\<in\><around*|{|0,\<ldots\>,N-1|}>> and
  <math|\<alpha\>\<in\><around*|{|1,\<ldots\>,d|}>>. Conversely, this system
  of equations, named <strong|equations of motion>, furnishes the classical
  (discrete) trajectory of particles, <math|<around*|(|k<rsub|\<star\>>,x<rsub|\<star\>>|)>>.
  In the continuous version, the discrete index <math|i> is replaced by a
  continous variable <math|t\<in\><around*|[|0,T|]>> for some
  <math|T\<in\>\<bbb-R\>>. Then, <math|k<rsub|i>> and <math|x<rsub|i>> come
  to be functions <math|k<around*|(|t|)>> and <math|x<around*|(|t|)>>
  respectively. Accordingly, <math|S<around*|(|k,x|)>> becomes a functional,
  as

  <\equation*>
    S<around*|[|k,x|]>=<big|int><rsub|0><rsup|T>\<mathd\>t<around*|[|k<around*|(|t|)><wide|x|\<dot\>><around*|(|t|)>-<big|sum><rsub|n=0><rsup|N<rsub|cut>><frac|<around*|(|-\<mathi\>|)><rsup|n>|n!>R<rsup|\<alpha\>><rsub|n><around*|(|x<around*|(|t|)>|)>k<rsub|\<alpha\>><around*|(|t|)>|]>,
  </equation*>

  where we use square brackets instead of parentheses for emphasizing that
  <math|S> is a functional. The equations of motion become

  <\equation*>
    <frac|\<delta\>S|\<delta\>k<rsub|\<alpha\>><around*|(|t|)>><around*|[|k<rsub|\<star\>>,x<rsub|\<star\>>|]>=<frac|\<delta\>S|\<delta\>x<rsup|\<alpha\>><around*|(|t|)>><around*|[|k<rsub|\<star\>>,x<rsub|\<star\>>|]>=0,
  </equation*>

  for each <math|t> and index <math|\<alpha\>>. It is recognized as the
  Hamiltonian equations in classical mechanics. Indeed, if denote

  <\equation*>
    H<around*|(|k,x|)>\<assign\><big|sum><rsub|n=0><rsup|N<rsub|cut>><frac|<around*|(|-\<mathi\>|)><rsup|n>|n!>R<rsup|\<alpha\>><rsub|n><around*|(|x|)>k<rsub|\<alpha\>>,
  </equation*>

  then by variation, we have

  <\equation*>
    <frac|\<delta\>S|\<delta\>k<around*|(|t|)>>=<wide|x|\<dot\>><around*|(|t|)>-<frac|\<partial\>H|\<partial\>k><around*|(|k<around*|(|t|)>,x<around*|(|t|)>|)>=0\<Rightarrow\><wide|x|\<dot\>><around*|(|t|)>=<frac|\<partial\>H|\<partial\>k><around*|(|k<around*|(|t|)>,x<around*|(|t|)>|)>,
  </equation*>

  and

  <\equation*>
    <frac|\<delta\>S|\<delta\>x<around*|(|t|)>>=-<wide|k|\<dot\>><around*|(|t|)>-<frac|\<partial\>H|\<partial\>x><around*|(|k<around*|(|t|)>,x<around*|(|t|)>|)>=0\<Rightarrow\><wide|k|\<dot\>><around*|(|t|)>=-<frac|\<partial\>H|\<partial\>x><around*|(|k<around*|(|t|)>,x<around*|(|t|)>|)>.
  </equation*>

  The right hand sides of <math|\<Rightarrow\>> are exactly the Hamiltonian
  equations.

  Last words about the moments. Recall that <math|\<hbar\>> appears in
  <math|R<rsub|n><around*|(|x|)>> as combination <math|x/\<hbar\>>. For
  example, in the traditional Hamiltonian, <math|R<rsub|0>> represents the
  potential, which describes how the particles interact with each other and
  how they interact with the experimental apparatus. Recall that
  <math|V<around*|(|x|)>=V<rprime|'><around*|(|x/\<hbar\>|)>> for some
  <math|\<hbar\>>-independent <math|V<rprime|'>>, say
  <math|V<rprime|'><around*|(|x|)>=sin<around*|(|\<omega\> x|)>> for some
  constant <math|\<omega\>>, thus <math|V<around*|(|x|)>=sin<around*|(|\<omega\>x/\<hbar\>|)>>.
  We have <math|<around*|(|\<mathd\>V/\<mathd\>x|)><around*|(|x|)>=<around*|(|1/\<hbar\>|)><around*|(|\<mathd\>V<rprime|'>/\<mathd\>x|)><around*|(|x/\<hbar\>|)>=<around*|(|\<omega\>/\<hbar\>|)>cos<around*|(|\<omega\>
  x/\<hbar\>|)>>, which oscillates by frequency <math|\<omega\>/\<hbar\>> and
  amplitude <math|\<omega\>/\<hbar\>>. We have to expect that the potential
  is slowly varying. Precisely, we must have <math|\<omega\>\<sim\>\<hbar\>>.

  <section|Drafts (TODO)>

  Consider

  \;

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    \<delta\><rsub|L><around*|(|z-x|)><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=<frac|\<partial\>|\<partial\>t><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    \<delta\><rsub|L><around*|(|z-x|)>\<varphi\><around*|(|x,t|)>=<frac|\<partial\>\<varphi\><rsub|L>|\<partial\>t><around*|(|z,t|)>,
  </equation*>

  where <math|\<varphi\><rsub|L>\<assign\>\<delta\><rsub|L>\<ast\>\<varphi\>>.
  On the other hand, integration by parts gives

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    \<delta\><rsub|L><around*|(|z-x|)><frac|\<partial\><rsup|n>|\<partial\>x<rsup|\<alpha\>>><around*|[|R<rsub|n><rsup|\<alpha\>><around*|(|x|)>\<varphi\><around*|(|x,t|)>|]>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    \<partial\><rsup|n><rsub|\<alpha\>>\<delta\><rsub|L><around*|(|z-x|)><around*|[|R<rsub|n><rsup|\<alpha\>><around*|(|x|)>\<varphi\><around*|(|x,t|)>|]>.
  </equation*>

  The right hand side can be written as

  <\equation*>
    <frac|\<partial\><rsup|n>|\<partial\>z<rsup|\<alpha\>>><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x\<delta\><rsub|L><around*|(|z-x|)><around*|[|R<rsub|n><rsup|\<alpha\>><around*|(|x|)>\<varphi\><around*|(|x,t|)>|]>.
  </equation*>

  If the scale of varying of <math|R<rsub|n>>s are much greater than
  <math|L>, namely <math|1/<around*|\<\|\|\>|\<partial\>R<rsub|n>|\<\|\|\>><rsub|\<infty\>>\<gg\>L>,
  then we have a sequence of approximations, as

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x\<delta\><rsub|L><around*|(|z-x|)><around*|[|R<rsub|n><rsup|\<alpha\>><around*|(|x|)>\<varphi\><around*|(|x,t|)>|]>>>|<row|<cell|\<approx\>>|<cell|<big|int><rsub|U<rsub|3L><around*|(|z|)>>\<mathd\>x\<delta\><rsub|L><around*|(|z-x|)><around*|[|R<rsub|n><rsup|\<alpha\>><around*|(|x|)>\<varphi\><around*|(|x,t|)>|]>>>|<row|<cell|\<approx\>>|<cell|R<rsub|n><rsup|\<alpha\>><around*|(|z|)><big|int><rsub|U<rsub|3L><around*|(|z|)>>\<mathd\>x\<delta\><rsub|L><around*|(|z-x|)>\<varphi\><around*|(|x,t|)>>>|<row|<cell|\<approx\>>|<cell|R<rsub|n><rsup|\<alpha\>><around*|(|z|)><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x\<delta\><rsub|L><around*|(|z-x|)>\<varphi\><around*|(|x,t|)>>>|<row|<cell|=>|<cell|R<rsub|n><rsup|\<alpha\>><around*|(|z|)>\<varphi\><rsub|L><around*|(|z,t|)>.>>>>
  </align>

  Altogether, we have the approximation

  <\equation*>
    \<mathi\><frac|\<partial\>\<varphi\><rsub|L>|\<partial\>t><around*|(|x,t|)>\<approx\><big|sum><rsub|n=0><rsup|N<rsub|cut>><frac|<around*|(|-1|)><rsup|n>|n!>\<partial\><rsup|n><rsub|\<alpha\>><around*|[|R<rsup|\<alpha\>><rsub|n><around*|(|x|)>\<varphi\><rsub|L><around*|(|x,t|)>|]>.
  </equation*>

  Strict calculation involves Hermitian polynormial, which brings unecessary
  complexity. We may have the relations <math|1/<around*|\<\|\|\>|\<partial\>R<rsub|n>|\<\|\|\>><rsub|\<infty\>>\<gg\>L\<gg\>\<hbar\>>.

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

  <appendix|Rapidly Decreasing Entire Functions are Dense in
  Square-Integrable Space (TODO)><label|appendix:dense>

  A function <math|f:\<bbb-R\><rsup|d>\<rightarrow\>\<bbb-C\>> is
  square-integrable if

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<around*|\||f<around*|(|x|)>|\|><rsup|2>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    f<rsup|\<ast\>><around*|(|x|)>f<around*|(|x|)>\<less\>\<infty\>.
  </equation*>

  This is a improper integral, thus defined by

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<around*|\||f<around*|(|x|)>|\|><rsup|2>=lim<rsub|R\<rightarrow\>\<infty\>><big|int><rsub|B<around*|(|R|)>>\<mathd\>x<around*|\||f<around*|(|x|)>|\|><rsup|2>,
  </equation*>

  where <math|B<around*|(|R|)>\<assign\><around*|[|-R,R|]><rsup|d>> denotes
  the <math|d>-dimensional \Pbox\Q. In other words, for any
  <math|\<varepsilon\>\<gtr\>0>, there exists <math|R<rsub|\<star\>>\<gtr\>0>
  and <math|\<delta\>\<gtr\>0>, such that for any
  <math|R\<gtr\>R<rsub|\<star\>>> and <math|0\<less\>\<Delta\>x\<less\>\<delta\>>,

  <\equation*>
    <around*|\||<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<around*|\||f<around*|(|x|)>|\|><rsup|2>-<big|int><rsub|B<around*|(|R|)>>\<mathd\>x<around*|\||f<around*|(|x|)>|\|><rsup|2>|\|>\<less\>\<varepsilon\>.
  </equation*>

  So, for any <math|\<varepsilon\>\<gtr\>0>, we can construct a compact
  supported function <math|g<rsub|R>:\<bbb-R\><rsup|d>\<rightarrow\>\<bbb-C\>>,
  which consists with <math|f> within the box <math|B<around*|(|R|)>> and
  vanishes outside. TODO

  \;

  \;

  Consider the convolution

  <\equation*>
    f<rsub|n><around*|(|x|)>=<around*|(|\<delta\><rsub|n>\<ast\>f|)><around*|(|x|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    \<delta\><rsub|n><around*|(|x-y|)>f<around*|(|y|)>,
  </equation*>

  where <math|n> is a positive integer and

  <\equation*>
    \<delta\><rsub|n><around*|(|x|)>\<assign\><frac|1|<around*|(|<sqrt|2\<mathpi\>>n|)><rsup|d>>exp<around*|(|-<frac|x<rsup|2>|2n>|)>,
  </equation*>

  that is, the probabilistic density function of normal distribution with
  zero mean and variance <math|n>. By young's inequality for convolution, we
  have

  <\equation*>
    <around*|\<\|\|\>|\<delta\><rsub|n>\<ast\>f|\<\|\|\>><rsub|\<infty\>>\<leqslant\><around*|\<\|\|\>|\<delta\><rsub|n>|\<\|\|\>><rsub|2><around*|\<\|\|\>|f|\<\|\|\>><rsub|2>.
  </equation*>

  <appendix|Stationary Phase Approximation><label|appendix:Stationary Phase
  Approximation>
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
    <associate|appendix:Stationary Phase Approximation|<tuple|C|21>>
    <associate|appendix:dense|<tuple|B|19>>
    <associate|auto-1|<tuple|1|3>>
    <associate|auto-10|<tuple|8|9>>
    <associate|auto-11|<tuple|9|10>>
    <associate|auto-12|<tuple|10|13>>
    <associate|auto-13|<tuple|11|17>>
    <associate|auto-14|<tuple|A|19>>
    <associate|auto-15|<tuple|B|21>>
    <associate|auto-16|<tuple|C|?>>
    <associate|auto-2|<tuple|1.1|3>>
    <associate|auto-3|<tuple|1.2|3>>
    <associate|auto-4|<tuple|2|3>>
    <associate|auto-5|<tuple|3|3>>
    <associate|auto-6|<tuple|4|4>>
    <associate|auto-7|<tuple|5|5>>
    <associate|auto-8|<tuple|6|7>>
    <associate|auto-9|<tuple|7|8>>
    <associate|axiom:local|<tuple|3|8>>
    <associate|axiom:prob|<tuple|1|3>>
    <associate|axiom:sup|<tuple|2|3>>
    <associate|axiom:uncert|<tuple|4|11>>
    <associate|eq:action|<tuple|10|7>>
    <associate|eq:deltav|<tuple|20|11>>
    <associate|eq:deltax|<tuple|19|11>>
    <associate|eq:gaussianwavefunction|<tuple|21|11>>
    <associate|eq:hamiltonian|<tuple|7|6>>
    <associate|eq:moment|<tuple|11|7>>
    <associate|eq:momentexpansion|<tuple|13|8>>
    <associate|eq:pathint|<tuple|8|7>>
    <associate|eq:pathint-hbar|<tuple|26|14>>
    <associate|eq:probtoself|<tuple|2|4>>
    <associate|eq:r-fourier|<tuple|4|5>>
    <associate|eq:r-fourier-alt|<tuple|5|6>>
    <associate|eq:standard|<tuple|22|11>>
    <associate|eq:transexp|<tuple|12|7>>
    <associate|eq:transexp-hbar|<tuple|25|14>>
    <associate|equ:superposition|<tuple|1|4>>
    <associate|footnote-1|<tuple|1|4>>
    <associate|footnote-10|<tuple|10|12>>
    <associate|footnote-11|<tuple|11|13>>
    <associate|footnote-12|<tuple|12|13>>
    <associate|footnote-2|<tuple|2|4>>
    <associate|footnote-3|<tuple|3|5>>
    <associate|footnote-4|<tuple|4|6>>
    <associate|footnote-5|<tuple|5|6>>
    <associate|footnote-6|<tuple|6|7>>
    <associate|footnote-7|<tuple|7|8>>
    <associate|footnote-8|<tuple|8|8>>
    <associate|footnote-9|<tuple|9|11>>
    <associate|footnr-1|<tuple|1|4>>
    <associate|footnr-10|<tuple|10|12>>
    <associate|footnr-11|<tuple|11|13>>
    <associate|footnr-12|<tuple|12|13>>
    <associate|footnr-2|<tuple|2|4>>
    <associate|footnr-3|<tuple|3|5>>
    <associate|footnr-4|<tuple|4|6>>
    <associate|footnr-5|<tuple|6|6>>
    <associate|footnr-6|<tuple|6|7>>
    <associate|footnr-7|<tuple|7|8>>
    <associate|footnr-8|<tuple|8|8>>
    <associate|footnr-9|<tuple|9|11>>
    <associate|section:Expanding Kernel as Generalized Function|<tuple|6|7>>
    <associate|section:Hermitianity on Moments|<tuple|8|9>>
    <associate|section:Locality Truncates the Moments|<tuple|7|8>>
    <associate|section:Path Integral Formalism|<tuple|5|5>>
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

      4<space|2spc>Wavefunction Is Rapidly Decreasing and Entire
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>

      5<space|2spc>Path Integral Formalism
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>

      6<space|2spc>From Integral to Differential
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>

      7<space|2spc>Locality Truncates the Moments
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>

      8<space|2spc>Hermitianity on the Moments
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>

      9<space|2spc>Uncertainty Principle Restricts the Highest Order Moment
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>

      10<space|2spc>From Quantum to Classical
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      A<space|2spc>Taylor Reminder> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      B<space|2spc>Rapidly Decreasing Entire Functions are Dense in
      Square-Integrable Space (TODO)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      C<space|2spc>Stationary Phase Approximation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>