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

  <em|We will frequently employ abbreviations throughout this note. So, keep
  them in mind.>

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
  quantum state) shall be linear: <math|\<partial\>\<varphi\>/\<partial\>t=L<around*|(|\<varphi\>,t|)>>
  where the operation <math|L> is linear on <math|\<varphi\>>.<\footnote>
    You may wonder why it is not <math|<around*|(|\<partial\><rsup|2>\<varphi\>/\<partial\>t<rsup|2>|)>=L<around*|(|\<varphi\>,t|)>>
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
  </footnote> Mathematically, linearity imports a <strong|kernel>
  <math|r:\<bbb-R\><rsup|d>\<times\>\<bbb-R\><rsup|d>\<times\>\<bbb-R\>\<rightarrow\>\<bbb-C\>>
  such that

  <\equation>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    r<around*|(|x,y,t|)>\<varphi\><around*|(|y,t|)>.<label|equ:superposition>
  </equation>

  The right hand side can be seen as a generalization of linear
  transformation in <math|\<bbb-R\><rsup|n>> like vector-matrix product
  <math|<big|sum><rsub|j>r<rsub|i j><around*|(|t|)>
  \<varphi\><rsub|j><around*|(|t|)>>. The imaginary <math|\<mathi\>> is
  employed for convenience.

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
    \<mathd\>y \<varphi\><around*|(|x,t|)><around*|[|r<rsup|\<ast\>><around*|(|x,y,t|)>-r<around*|(|y,x,t|)>|]>\<varphi\><rsup|\<ast\>><around*|(|y,t|)>=0.
  </equation*>

  Since <math|\<varphi\>> is arbitrary, we obtain

  <\equation>
    r<rsup|\<ast\>><around*|(|x,y,t|)>=r<around*|(|y,x,t|)>.
  </equation>

  That is, complex conjugating <math|r> is simply swapping its arguments. We
  call such function <strong|Hermitian>. The two arguments of <math|r> are
  not independent.

  Probability interpretation (axiom <reference|axiom:prob>), together with
  superposition principle (axiom <reference|axiom:sup>), is the direct result
  of the double-slit experiment of electron. Details can be found in
  Feynman's Lectures on Physics, Vol 3, chapter 1.

  <section|Both Wavefunction and Kernel Are Rapidly Decreasing>

  Before doing calculation, we first address where wavefunctions live.
  Probability interpretation (axiom <reference|axiom:prob>) demands that
  wavefunctions are square-integrable. Namely, wavefunction is in the
  square-integrable space <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>.
  But this is far from sufficient. Many mathematical tools are essential for
  developing quantum mechanics, one of which is Fourier transform (and its
  inverse).

  It is <hlink|well known|https://en.wikipedia.org/wiki/Fourier_transform>,
  however, that the Fourier transform of a square-integrable function may not
  be square-integrable again, so that its inverse Fourier transform may not
  exist. Since Fourier transform is basic in quantum mechanics, we shall seek
  for a smaller space in which wavefunctions live. An ideal substitution is
  the rapidly decreasing functions. <strong|Rapidly decreasing function> is a
  smooth function <math|f:\<bbb-R\><rsup|d>\<rightarrow\>\<bbb-C\>> that
  decays \Pexponentially fast\Q at infinity. Precisely, for any
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
  decreasing function. Denote <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>
  as the collection of all the rapidly decreasing functions from
  <math|\<bbb-R\><rsup|d>> to <math|\<bbb-C\>>.<\footnote>
    This was first found by Laurent Schwartz in 1949, in his paper \PThéorie
    des distributions et transformation de Fourier\Q. The space of rapidly
    decreasing functions is now called <strong|Schwartz space>, as
    <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>> indicates. Thus, Fourier
    transform is a linear automorphism in Schwartz space.
  </footnote>

  Rapidly decreasing functions are dense in square-integrable space, meaning
  that for any <math|f\<in\>L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>> and any
  <math|\<varepsilon\>\<gtr\>0>, there is a
  <math|g\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>> such that

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    <around*|\||f<around*|(|x|)>-g<around*|(|x|)>|\|><rsup|2>\<less\>\<varepsilon\>.
  </equation*>

  For example, for any wavefunction <math|f\<in\>L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>,
  when we measure the probability on any area of positions
  <math|U\<subset\>\<bbb-R\><rsup|d>>, we can use its approximation
  <math|g\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>> instead, because the
  difference is bounded by

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
  <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>\<rightarrow\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>
  is plausible.

  To illustrate the underlying techniques, we give a simplified construction
  of the rapidly decreasing function <math|g> while omitting many details. We
  referer to appendices <reference|appendix:dense> for readers who eager a
  complete proof. First, we notice that integrals over
  <math|\<bbb-R\><rsup|d>> are imporper integrals.<\footnote>
    Recall that an imporper integral of a function <math|f> is defined by the
    limit

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
      f<around*|(|x|)>\<assign\>lim<rsub|L\<rightarrow\>\<infty\>><big|int><rsub|<around*|[|-L,L|]><rsup|d>>\<mathd\>x
      f<around*|(|x|)>.
    </equation*>

    In other words, the contribution outside the box
    <math|<around*|[|-L,L|]><rsup|d>> will be negligible if <math|L> is large
    enough.
  </footnote> It hints us to consider a cut-off function <math|f<rsub|L>>
  where <math|f<rsub|L><around*|(|x|)>\<assign\>f<around*|(|x|)>> when
  <math|x\<in\><around*|[|-L,L|]><rsup|d>> and
  <math|f<rsub|L><around*|(|x|)>\<assign\>0> otherwise. By the definition of
  imporper integral, we have, for each <math|\<varepsilon\>\<gtr\>0>, there
  exists <math|L\<gtr\>0> such that

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>><around*|\||f<around*|(|x|)>-f<rsub|L><around*|(|x|)>|\|><rsup|2>=<big|int><rsub|x\<nin\><around*|[|-L,L|]><rsup|d>>\<mathd\>x<around*|\||f<around*|(|x|)>|\|><rsup|2>\<less\><frac|\<varepsilon\>|4>.
  </equation*>

  The <math|f<rsub|L><around*|(|x|)>> has sufficient decreasing speed just
  because it vanishes as <math|<around*|\<\|\|\>|x|\<\|\|\>>\<rightarrow\>\<infty\>>.
  But, <math|f<rsub|L>\<nin\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>
  because it is not smooth. It is sharp at the boundaries of cut-off. We need
  to polish it using the trick of convolution. Explicitly, construct function
  <math|g<rsub|n>> using convolution, as

  <\equation*>
    g<rsub|n><around*|(|x|)>\<assign\><around*|(|\<delta\><rsub|n>\<ast\>f<rsub|L>|)><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    \<delta\><rsub|n><around*|(|x-y|)>f<rsub|L><around*|(|y|)>,
  </equation*>

  where <math|\<delta\><rsub|n>> is a Gaussian function with \Pwidth\Q
  <math|1/<sqrt|n>>, as

  <\equation*>
    \<delta\><rsub|n><around*|(|x|)>\<assign\><around*|(|<frac|n|2\<mathpi\>>|)><rsup|d/2>exp<around*|(|-<frac|n
    x<rsup|2>|2>|)>.
  </equation*>

  Apprarently, <math|g<rsub|n><around*|(|x|)>> is smooth because derivatives
  taken on <math|x> are applied to <math|\<delta\><rsub|n>>, which is smooth.
  When <math|n> is large enough,<math|\<delta\><rsub|n>> becomes so narrow
  that <math|g<rsub|n>> approximates <math|f<rsub|L>> well enough. In other
  words, for any <math|\<varepsilon\>\<gtr\>0>, there exists <math|N\<gtr\>0>
  such that for any <math|n\<gtr\>N>, we have

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<around*|\||f<rsub|L><around*|(|x|)>-g<rsub|n><around*|(|x|)>|\|><rsup|2>\<less\><frac|\<varepsilon\>|4>.
  </equation*>

  Altogether, using the triangle inequality of <math|L<rsub|2>>, we find

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>><around*|\||f<around*|(|x|)>-g<rsub|n><around*|(|x|)>|\|><rsup|2>\<less\><around*|(|<sqrt|\<varepsilon\>/4>+<sqrt|\<varepsilon\>/4>|)><rsup|2>=\<varepsilon\>.
  </equation*>

  So, we have constructed (even though omitted many details) a rapid
  decreasing function <math|g<rsub|n>> that is a good approximation of the
  square-integrable function <math|f>.

  Then, what about the kernel <math|r>? Which space does it belong to? It is
  well known that, to keep <math|<big|int>\<mathd\>y
  r<around*|(|\<cdummy\>,y,t|)>\<varphi\><around*|(|y,t|)>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>
  for any <math|\<varphi\>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>,
  the minimal condition for <math|r> is that it is tempered increasing, which
  means that <math|r<around*|(|x,y,t|)>> can increase as fast as polynormials
  as <math|<around*|\<\|\|\>|y|\<\|\|\>>\<rightarrow\>\<infty\>>. But, notice
  that <math|r> only appears as \Papplying\Q to a wavefunction, which is
  rapidly decreasing, we can also cut-off <math|r> like what we have did for
  <math|f>. Explicitly, we can construct <math|r<rsub|L>> which is consist
  with <math|r> as <math|y\<in\><around*|[|-L,L|]><rsup|d>> and vanishes
  otherwise. Because time evolution is a linear equation, perturbation is
  well controlled. It means that replacing <math|r> by <math|r<rsub|L>> will
  perturb the time evolution only by a little. Then, using the same
  convolution trick, we can construct a rapid decreasing function that
  approximates <math|r<rsub|L>>, which leading to another tiny perturbation.
  Altogether, <math|r> is replaced by a rapid decreasing function. The same
  for its first argument (using another <math|\<psi\>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>
  to its first argument, and everything goes the same). TODO: better
  illustration.

  <section|Path Integral Formalism><label|section:Path Integral Formalism>

  We are trying to derive a generic path integral formalism. Given a small
  <math|\<Delta\>t\<gtr\>0>, time evolution (equation
  <reference|equ:superposition>) gives

  <\equation*>
    \<varphi\><around*|(|x,t+\<Delta\>t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y<around*|[|\<delta\><around*|(|x-y|)>-\<mathi\>
    r<around*|(|x,y,t|)>\<Delta\>t|]> \<varphi\><around*|(|y,t|)>+\<omicron\><around*|(|\<Delta\>t|)>.
  </equation*>

  We are to convert the <math|<around*|[|\<cdots\>|]>> part into exponential.
  To do so, we take the inverse Fourier transform

  <\equation*>
    \<delta\><around*|(|x-y|)>=<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)>,
  </equation*>

  and

  <\equation>
    r<around*|(|x,y,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)><wide|r|^><around*|(|k,y,t|)>,<label|eq:r-fourier>
  </equation>

  in which<\footnote>
    Indeed, by inserting equation <reference|eq:hamiltonian> into equation
    <reference|eq:r-fourier>, we get

    <\equation*>
      r<around*|(|x,y,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
      exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)>\<times\><around*|[|<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rprime|'>
      exp<around*|(|-\<mathi\>k<around*|(|x<rprime|'>-y|)>|)>
      r<around*|(|x<rprime|'>,y,t|)>|]>.
    </equation*>

    Re-arrange the right hand side as

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rprime|'>
      r<around*|(|x<rprime|'>,y,t|)><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
      exp<around*|(|\<mathi\>k<around*|(|x-x<rprime|'>|)>|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rprime|'>
      r<around*|(|x<rprime|'>,y,t|)>\<delta\><around*|(|x-x<rprime|'>|)>,
    </equation*>

    which goes back to <math|r<around*|(|x,y|)>>, indicating that equations
    <reference|eq:r-fourier> and <reference|eq:hamiltonian> are consistent.
    <with|color|red|But, before Fourier transform, we have to prove that
    <math|r> can be approximated by rapidly decreasing functions.>
  </footnote> <\footnote>
    Alternatively, we can define

    <\equation>
      <wide|r|\<check\>><around*|(|x,k,t|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
      exp<around*|(|-\<mathi\>k<around*|(|x-y|)>|)>
      r<around*|(|x,y,t|)>.<label|eq:r-fourier-alt>
    </equation>

    Thus,

    <\equation*>
      r<around*|(|x,y,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
      exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)><wide|r|\<check\>><around*|(|x,k,t|)>.
    </equation*>

    Indeed, plugging <math|<wide|r|\<check\>><around*|(|x,k,t|)>> into the
    right hand side of <math|r<around*|(|x,y,t|)>>,

    <\equation*>
      r<around*|(|x,y,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
      exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)>\<times\><around*|[|<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y<rprime|'>
      exp<around*|(|-\<mathi\>k<around*|(|x-y<rprime|'>|)>|)>
      r<around*|(|x,y<rprime|'>,t|)>|]>.
    </equation*>

    Re-arrange the right hand side as

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y<rprime|'>
      r<around*|(|x,y<rprime|'>,t|)><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
      exp<around*|(|\<mathi\>k<around*|(|y<rprime|'>-y|)>|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y<rprime|'>
      r<around*|(|x,y<rprime|'>,t|)>\<delta\><around*|(|y<rprime|'>-y|)>,
    </equation*>

    which goes back to <math|r<around*|(|x,y,t|)>> again. The
    <math|<wide|r|^>> and <math|<wide|r|\<check\>>> are the Fourier transform
    of <math|r> performed on each of its arguments respectively. In fact,
    <math|<wide|r|^>> and <wide|r|\<check\>> are the same object. Indeed,
    recalling the Hermitianity of <math|r>, we have

    <\equation*>
      <wide|r|^><rsup|\<ast\>><around*|(|k,y,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
      exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)>
      r<rsup|\<ast\>><around*|(|x,y,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
      exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)>r<around*|(|y,x,t|)>.
    </equation*>

    Exchanging <math|x> and <math|y> makes

    <\equation*>
      <wide|r|^><rsup|\<ast\>><around*|(|k,x,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
      exp<around*|(|-\<mathi\>k<around*|(|x-y|)>|)>r<around*|(|x,y,t|)>,
    </equation*>

    which is just the <math|<wide|r|\<check\>><around*|(|x,k,t|)>>. So, we
    have

    <\equation>
      <wide|r|^><rsup|\<ast\>><around*|(|k,x,t|)>=<wide|r|\<check\>><around*|(|x,k,t|)>.
    </equation>

    Once again, we find that the two arguments of <math|r<around*|(|x,y,t|)>>
    are not independent.
  </footnote>

  <\equation>
    <wide|r|^><around*|(|k,y,t|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    exp<around*|(|-\<mathi\>k<around*|(|x-y|)>|)>
    r<around*|(|x,y,t|)>.<label|eq:hamiltonian>
  </equation>

  Then, the <math|<around*|[|\<cdots\>|]>> part is converted into exponential
  by

  <\align>
    <tformat|<table|<row|<cell|<around*|[|\<cdots\>|]>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)><around*|[|1-\<mathi\><wide|r|^><around*|(|k,y,t|)>\<Delta\>t|]>>>|<row|<cell|=>|<cell|<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<around*|(|x-y|)>-\<mathi\><wide|r|^><around*|(|k,y,t|)>\<Delta\>t|}>+\<omicron\><around*|(|\<Delta\>t|)>>>>>
  </align>

  Plugging back to <math|\<varphi\><around*|(|x,t+\<Delta\>t|)> >results in

  <\equation*>
    \<varphi\><around*|(|x,t+\<Delta\>t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<around*|(|x-y|)>-\<mathi\><wide|r|^><around*|(|k,y,t|)>\<Delta\>t|}>\<varphi\><around*|(|y,t|)>+\<omicron\><around*|(|\<Delta\>t|)>.
  </equation*>

  Now, we have converted the <math|<around*|[|\<cdots\>|]>> part into
  exponential, as a starting point of constructing path integral.

  After re-denoting <math|x<rsub|1>\<assign\>x>, <math|x<rsub|0>\<assign\>y>,
  <math|k<rsub|0>\<assign\>k>, <math|t<rsub|1>=t+\<Delta\>t>, and
  <math|t<rsub|0>\<assign\>t>, it becomes

  <\equation*>
    \<varphi\><around*|(|x<rsub|1>,t<rsub|1>|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rsub|0><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k<rsub|0>|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<rsub|0><around*|(|x<rsub|1>-x<rsub|0>|)>-\<mathi\><wide|r|^><around*|(|k<rsub|0>,x<rsub|0>,t<rsub|0>|)>\<Delta\>t|}>
    \<varphi\><around*|(|x<rsub|0>,t<rsub|0>|)>+\<omicron\><around*|(|\<Delta\>t|)>.
  </equation*>

  The same (replacing <math|x<rsub|1>> by <math|x<rsub|2>>, <math|x<rsub|0>>
  by <math|x<rsub|1>>, and <math|t<rsub|2>\<assign\>t<rsub|1>+\<Delta\>t>),

  <\equation*>
    \<varphi\><around*|(|x<rsub|2>,t<rsub|2>|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rsub|1><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k<rsub|1>|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<rsub|1><around*|(|x<rsub|2>-x<rsub|1>|)>-\<mathi\><wide|r|^><around*|(|k<rsub|1>,x<rsub|1>,t<rsub|1>|)>\<Delta\>t|}>
    \<varphi\><around*|(|x<rsub|1>,t<rsub|1>|)>+\<omicron\><around*|(|\<Delta\>t|)>.
  </equation*>

  By inserting <math|\<varphi\><around*|(|x<rsub|1>,t<rsub|1>|)>>, we find

  <\align>
    <tformat|<table|<row|<cell|\<varphi\><around*|(|x<rsub|2>,t<rsub|2>|)>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rsub|1><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k<rsub|1>|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<rsub|1><around*|(|x<rsub|2>-x<rsub|1>|)>-\<mathi\><wide|r|^><around*|(|k<rsub|1>,x<rsub|1>,t<rsub|1>|)>\<Delta\>t|}>\<times\>>>|<row|<cell|\<times\>>|<cell|<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rsub|0><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k<rsub|0>|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\>k<rsub|0><around*|(|x<rsub|1>-x<rsub|0>|)>-\<mathi\><wide|r|^><around*|(|k<rsub|0>,x<rsub|0>,t<rsub|0>|)>\<Delta\>t|}>
    \<varphi\><around*|(|x<rsub|0>,t<rsub|0>|)>>>|<row|<cell|>|<cell|+\<omicron\><around*|(|\<Delta\>t|)>.>>>>
  </align>

  After repeating this <math|N> times, we arrive at

  <\equation>
    \<varphi\><around*|(|x<rsub|N>,t<rsub|N>|)>=<big|int>D<around*|(|k,x|)>
    exp<around*|(|\<mathi\>S<around*|(|k,x|)>|)>\<varphi\><around*|(|x<rsub|0>,t<rsub|0>|)>+\<omicron\><around*|(|\<Delta\>t|)>,<label|eq:pathint>
  </equation>

  in which

  <\equation>
    <big|int>D<around*|(|k,x|)>\<assign\><big|prod><rsub|i=0><rsup|N-1><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k<rsub|i>|<around*|(|2\<mathpi\>|)><rsup|d>>*<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rsub|i>
  </equation>

  and

  <\equation>
    S<around*|(|k,x|)>\<assign\><big|sum><rsub|i=0><rsup|N-1>\<Delta\>t<around*|[|k<rsub|i><around*|(|<frac|x<rsub|i+1>-x<rsub|i>|\<Delta\>t>|)>-<wide|r|^><around*|(|k<rsub|i>,x<rsub|i>,t<rsub|i>|)>|]>.<label|eq:action>
  </equation>

  If we recognize <math|<around*|(|x<rsub|i+1>-x<rsub|i>|)>/\<Delta\>t> as
  the velocity <math|<wide|x|\<dot\>><around*|(|t<rsub|i>|)>>, then
  <math|S<around*|(|k,x,t|)>> can be seen as the Legendre transform
  <math|<big|int><around*|[|p<around*|(|t|)><wide|x|\<dot\>><around*|(|t|)>-H<around*|(|p<around*|(|t|)>,x<around*|(|t|)>,t|)>|]>\<mathd\>t>,
  in which <with|color|dark green|<em|<math|k> is analogy to momentum
  <math|p> and <math|<wide|r|^><around*|(|k,x,t|)>> plays the role of
  Hamiltonian <math|H<around*|(|p,x,t|)>>>>.

  <section|From Integral to Differential><label|section:Expanding Kernel as
  Generalized Function>

  Given a \Ptest function\Q <math|\<psi\>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>
  which is also analytic at origin, we can calculate its \Pinner product\Q
  with time evolution (equation <reference|equ:superposition>), as

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x\<psi\><around*|(|x|)><around*|[|\<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>|]>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    \<psi\><around*|(|x|)>r<around*|(|x,y,t|)>\<varphi\><around*|(|y,t|)>.
  </equation*>

  In the right hand side, Taylor expanding <math|\<psi\>> at <math|y> makes

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x\<psi\><around*|(|x|)><around*|[|\<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>|]>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    <around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>\<partial\><rsup|n><rsub|\<alpha\>>\<psi\><around*|(|y|)><around*|(|x-y|)><rsup|\<alpha\>>|]>r<around*|(|x,y,t|)>\<varphi\><around*|(|y,t|)>,
  </equation*>

  where <math|\<alpha\>\<assign\><around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>
  and <math|<around*|(|x-y|)><rsup|\<alpha\>>\<assign\><around*|(|x-y|)><rsup|\<alpha\><rsub|1>>\<times\>\<cdots\>\<times\><around*|(|x-y|)><rsup|\<alpha\><rsub|n>>>
  (recall the abbreviations). Define the <strong|moment>

  <\equation>
    R<rsub|n><rsup|\<alpha\>><around*|(|y,t|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    r<around*|(|x,y,t|)><around*|(|x-y|)><rsup|\<alpha\>>.<label|eq:moment>
  </equation>

  Then, it is simplified to

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x\<psi\><around*|(|x|)><around*|[|\<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>|]>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    \<partial\><rsup|n><rsub|\<alpha\>>\<psi\><around*|(|y|)>R<rsup|\<alpha\>><rsub|n><around*|(|y,t|)>\<varphi\><around*|(|y,t|)>.
  </equation*>

  After integration by parts and then omitting the boundary (since
  <math|\<psi\>> is rapidly decreasing), we get

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y\<psi\><around*|(|y|)><around*|[|\<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|y,t|)>|]>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    \<psi\><around*|(|y|)><frac|\<partial\><rsup|n>|\<partial\>y<rsup|\<alpha\>>><around*|[|R<rsup|\<alpha\>><rsub|n><around*|(|y,t|)>\<varphi\><around*|(|y,t|)>|]>,
  </equation*>

  where we have replaced <math|x> by <math|y> in the left hand side for
  making it clear. Since <math|\<psi\>> is arbitrary, we have<\footnote>
    This is a quantum analogy of the Kramers\UMoyal expansion in stochastic
    process, which has the form

    <\equation*>
      <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!><frac|\<partial\><rsup|n>|\<partial\>x<rsup|\<alpha\>>><around*|[|R<rsup|\<alpha\>><rsub|n><around*|(|x,t|)>p<around*|(|x,t|)>|]>.
    </equation*>

    Here, the <math|p> is a probability density function that represents the
    stochastic process. Remark that the only difference between the two
    equations is the imaginary factor before temporal derivative.
  </footnote>

  <\equation>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!><frac|\<partial\><rsup|n>|\<partial\>x<rsup|\<alpha\>>><around*|[|R<rsup|\<alpha\>><rsub|n><around*|(|x,t|)>\<varphi\><around*|(|x,t|)>|]>.<label|eq:transexp>
  </equation>

  That is, we convert the integral equation <reference|equ:superposition> to
  a differential equation. In practice, differential equation is much more
  convenient than its integral correspondence for doing calculus. In summary,
  we have three equivalent formalisms that describe the time evolution of
  wavefunction: the original integral equation <reference|equ:superposition>,
  the path integral <reference|eq:pathint>, and now the differential equation
  <reference|eq:transexp>.

  Interestingly, the Taylor expansion of the \PHamiltonian\Q
  <math|<wide|r|^><around*|(|k,y,t|)>>, defined by equation
  <reference|eq:hamiltonian>, also relates to the moments <math|R<rsub|n>>s.
  Directly by equation <reference|eq:hamiltonian>, we have

  <\equation*>
    <frac|\<partial\><rsup|n><wide|r|^>|\<partial\>k<rsub|\<alpha\>>><around*|(|0,y,t|)>=lim<rsub|k\<rightarrow\>0><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    <around*|[|<frac|\<partial\><rsup|n>|\<partial\>k<rsub|\<alpha\>>>exp<around*|(|-\<mathi\>k<around*|(|x-y|)>|)>|]>
    r<around*|(|x,y,t|)>=<around*|(|-\<mathi\>|)><rsup|n><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    \ r<around*|(|x,y,t|)><around*|(|x-y|)><rsup|\<alpha\>>.
  </equation*>

  The integral is recognized as <math|R<rsub|n><rsup|\<alpha\>><around*|(|y,t|)>>.
  So, we find <math|<around*|(|-\<mathi\>|)><rsup|n>R<rsub|n><rsup|\<alpha\>><around*|(|y,t|)>>s
  the Taylor coefficients of <math|<wide|r|^><around*|(|k,y,t|)>> expanded by
  <math|k> at its origin. Namely,<\footnote>
    <with|color|red|But, we have to prove that
    <math|<wide|r|^><around*|(|k,y|)>> is entire on <math|k>, so that its
    Taylor series converges to itself.>
  </footnote>

  <\equation>
    <wide|r|^><around*|(|k,y,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|n>|n!>R<rsup|\<alpha\>><rsub|n><around*|(|y,t|)>k<rsub|\<alpha\>>,<label|eq:momentexpansion>
  </equation>

  where <math|k<rsub|\<alpha\>>\<assign\><around*|(|k<rsub|\<alpha\><rsub|1>>\<times\>\<cdots\>\<times\>k<rsub|\<alpha\><rsub|n>>|)>>
  as usual. Again, the details of <math|S<around*|(|k,x,t|)>> (defined in
  equation <reference|eq:pathint>) can be completely determined by the
  moments <math|R<rsub|n>>s.

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
  consider an example, in which <math|R<rsub|n><around*|(|x,t|)>=c<rsup|n>>
  for some constant <math|c>, and set the dimension <math|d=1> for
  simplicity. Then, time evolution (equation <reference|eq:transexp>) at
  <math|x=0> is

  <\equation*>
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|0,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-c|)><rsup|n>|n!>
    <frac|\<partial\><rsup|n>\<varphi\>|\<partial\>x<rsup|n>><around*|(|0,t|)>.
  </equation*>

  The last expression happens to be the Taylor series of
  <math|\<varphi\><around*|(|x,t|)>> at <math|x=-c>, namely
  <math|\<varphi\><around*|(|-c,t|)>>. So, we conclude that
  <math|R<rsub|n><around*|(|x,t|)>=c<rsup|n>> for some constant <math|c>
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
    \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=\<cal-L\><around*|(|x,t,\<varphi\><around*|(|x,t|)>,<frac|\<partial\>\<varphi\>|\<partial\>x><around*|(|x,t|)>,<frac|\<partial\><rsup|2>\<varphi\>|\<partial\>x<rsup|2>><around*|(|x,t|)>,\<ldots\>,<frac|\<partial\><rsup|n>\<varphi\>|\<partial\>x<rsup|n>><around*|(|x,t|)>|)>,
  </equation*>

  where <math|\<cal-L\>> is an analytic function. This is easy to understand
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

  TODO

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

  Now we study the relation between <math|R<rsub|n>>s and their complex
  conjugations. Direct calculation is found tedious. Instead, we start at
  evaluating <math|<wide|r|^><rsup|\<ast\>>>. By conjugating the definition
  of <math|<wide|r|^>> (equation <reference|eq:hamiltonian>) and applying the
  Hermitianity of <math|r>, we get

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|k,y,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    exp<around*|(|\<mathi\>k<around*|(|x-y|)>|)> r<around*|(|y,x,t|)>.
  </equation*>

  Then, applying equation <reference|eq:r-fourier> to
  <math|r<around*|(|y,x|)>> gives

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|k,y,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>k<rprime|'><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>x|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|{|\<mathi\><around*|(|k-k<rprime|'>|)><around*|(|x-y|)>|}>
    <wide|r|^><around*|(|k<rprime|'>,x,t|)>.
  </equation*>

  Taylor expanding <math|<wide|r|^><around*|(|k<rprime|'>,x,t|)>> by <math|x>
  at <math|y>,

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|k,y,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>k<rprime|'><frac|\<partial\><rsup|n><wide|r|^>|\<partial\>y<rsup|\<alpha\>>><around*|(|k<rprime|'>,y,t|)>\<times\><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>x|<around*|(|2\<mathpi\>|)><rsup|d>>
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
  <math|<wide|r|^><rsup|\<ast\>><around*|(|k,y,t|)>> becomes
  <math|<around*|(|-\<mathi\>|)><rsup|n>\<partial\><rsup|n><rsub|\<alpha\>>\<delta\><around*|(|k-k<rprime|'>|)>>.
  Thus,

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|k,y,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|n>|n!><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>k<rprime|'><frac|\<partial\><rsup|n><wide|r|^>|\<partial\>y<rsup|\<alpha\>>><around*|(|k<rprime|'>,y,t|)>\<partial\><rsup|n><rsub|\<alpha\>>\<delta\><around*|(|k-k<rprime|'>|)>.
  </equation*>

  By integration by parts (recalling that <math|\<partial\><rsup|n>\<delta\>>
  is odd when <math|n> is odd, otherwise even) and then integrating over
  <math|k<rprime|'>>, we arrive at

  <\equation*>
    <wide|r|^><rsup|\<ast\>><around*|(|k,y,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|n>|n!><frac|\<partial\><rsup|2n><wide|r|^>|\<partial\>k<rsub|\<alpha\>>\<partial\>y<rsup|\<alpha\>>><around*|(|k,y,t|)>.
  </equation*>

  Since <math|<around*|(|-\<mathi\>|)><rsup|n>R<rsub|n><around*|(|y,t|)>>s
  are the coefficients of Taylor expansion of
  <math|<wide|r|^><around*|(|k,y,t|)>> by <math|k> (equation
  <reference|eq:momentexpansion>), we find

  <\equation*>
    <around*|(|R<rsup|\<alpha\>><rsub|m>|)><rsup|\<ast\>><around*|(|y,t|)>=<around*|(|-\<mathi\>|)><rsup|m><frac|\<partial\><rsup|m><wide|r|^><rsup|\<ast\>>|\<partial\>k<rsub|\<alpha\>>><around*|(|0,y,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|m+n>|n!><frac|\<partial\><rsup|n>|\<partial\>y<rsup|\<beta\>>><frac|\<partial\><rsup|m+n><wide|r|^>|\<partial\>k<rsub|\<alpha\>>\<partial\>k<rsub|\<beta\>>><around*|(|0,y,t|)>.
  </equation*>

  Again, <math|>the <math|<around*|(|m+n|)>>-th coefficients of the Taylor
  expansion is <math|<around*|(|-\<mathi\>|)><rsup|m+n>R<rsub|m+n><around*|(|y,t|)>>,
  so

  <\equation*>
    <around*|(|R<rsup|\<alpha\>><rsub|m>|)><rsup|\<ast\>><around*|(|y,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|m+n>|n!><frac|\<partial\><rsup|n>|\<partial\>y<rsup|\<beta\>>><around*|[|<around*|(|-\<mathi\>|)><rsup|m+n>R<rsup|\<alpha\>\<beta\>><rsub|m+n><around*|(|y,t|)>|]>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|m+n>|n!><frac|\<partial\><rsup|n>|\<partial\>y<rsup|\<beta\>>>R<rsup|\<alpha\>\<beta\>><rsub|m+n><around*|(|y,t|)>.
  </equation*>

  Recall that <math|R<rsub|n>=0> for any <math|n\<gtr\>N<rsub|cut>> (section
  <reference|section:Locality Truncates the Moments>), we finally arrive at

  <\equation>
    <around*|(|R<rsup|\<alpha\>><rsub|m>|)><rsup|\<ast\>><around*|(|x|)>=<big|sum><rsub|n=0><rsup|N<rsub|cut>-m><frac|<around*|(|-1|)><rsup|m+n>|n!><frac|\<partial\><rsup|n>|\<partial\>x<rsup|\<beta\>>>R<rsup|\<alpha\>\<beta\>><rsub|m+n><around*|(|x,t|)>.
  </equation>

  It relates the moments <math|R<rsub|n>>s to their complex conjugations.

  <section|Galilean Symmetry Fixes <math|N<rsub|cut>=2>>

  <section|Back to Classical World>

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
    <associate|appendix:Stationary Phase Approximation|<tuple|B|21>>
    <associate|appendix:dense|<tuple|A|19>>
    <associate|auto-1|<tuple|1|3>>
    <associate|auto-10|<tuple|8|9>>
    <associate|auto-11|<tuple|9|10>>
    <associate|auto-12|<tuple|10|13>>
    <associate|auto-13|<tuple|A|15>>
    <associate|auto-14|<tuple|B|17>>
    <associate|auto-15|<tuple|B|19>>
    <associate|auto-16|<tuple|C|21>>
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
    <associate|eq:deltav|<tuple|18|11>>
    <associate|eq:deltax|<tuple|17|11>>
    <associate|eq:gaussianwavefunction|<tuple|19|11>>
    <associate|eq:hamiltonian|<tuple|7|6>>
    <associate|eq:moment|<tuple|11|7>>
    <associate|eq:momentexpansion|<tuple|13|8>>
    <associate|eq:pathint|<tuple|8|7>>
    <associate|eq:pathint-hbar|<tuple|24|14>>
    <associate|eq:probtoself|<tuple|2|4>>
    <associate|eq:r-fourier|<tuple|4|5>>
    <associate|eq:r-fourier-alt|<tuple|5|6>>
    <associate|eq:standard|<tuple|20|11>>
    <associate|eq:transexp|<tuple|12|7>>
    <associate|eq:transexp-hbar|<tuple|23|14>>
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
    <associate|footnr-5|<tuple|5|6>>
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

      10<space|2spc>From Quantum to Classical (TODO)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>

      11<space|2spc>Drafts (TODO) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      A<space|2spc>Taylor Reminder> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      B<space|2spc>Rapidly Decreasing Entire Functions are Dense in
      Square-Integrable Space (TODO)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      C<space|2spc>Stationary Phase Approximation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>