<TeXmacs|2.1.4>

<style|article>

<\body>
  <doc-data|<doc-title|On Quantum Mechanics: A Sketch>>

  <abstract-data|<abstract|We derive the Schr<wide|o|\<ddot\>>dinger equation
  of quantum mechanics following the steps in stochastic process. As a
  sketch, detailed proofs are temporally omitted.>>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>How
    to Read this Note?> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>On
    Wave-Function> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3<space|2spc>Superposition
    Principle and Time Evolution> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4<space|2spc>Probability
    Interpretation Implies Hermitianity> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5<space|2spc>Path
    Integral Formalism> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6<space|2spc>An
    Useful Expansion> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7<space|2spc>Expansion
    of Transition Rate> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|8<space|2spc>On
    Analyticity> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|9<space|2spc>Locality
    Imports a Cut-Off on Moments> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|10<space|2spc>Hermitianity
    on Moments> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|11<space|2spc>Uncertainty
    Principle> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|12<space|2spc>Summary>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>
  </table-of-contents>

  <section|How to Read this Note?>

  Tips for reading this note:

  <\itemize>
    <item><strong|Definitions> are in bold font.

    <item><em|Important> statements are in italic font.

    <item>Only important equations are numbered.

    <item><with|color|red|Questions> are in red color.

    <item><with|color|dark green|Conclusions> are in green color.

    <item>You can omit all the nonsense about stochastic process, just
    focusing on quantum mechanics.

    <item>Footnotes are also negligible (except for those containing
    <strong|definition>s).
  </itemize>

  <section|On Wave-Function>

  In classical physics, a system with <math|n> classical particles in
  <math|3>-dimensional space can be represented by an element in
  <math|\<bbb-R\><rsup|3n>>, or a <strong|configuration>. The time evolution
  is thus a trajectory in the space of configurations, namely a map
  <math|\<bbb-R\>\<rightarrow\>\<bbb-R\><rsup|3n>>.<\footnote>
    Remark that the space of configurations is not the phase space. For a
    Hamiltonian system, the phase space is <math|\<bbb-R\><rsup|6n>>, where
    the dimension of phase space doubles because of momenta.
  </footnote> Generally, we suppose that the space of configurations is
  <math|d>-dimensional Euclidean.

  The state of a quantum system is represented by wave-function. A
  <strong|wave-function> is a map from the space of configurations to complex
  plane, say <math|f:\<bbb-R\><rsup|d>\<rightarrow\>\<bbb-C\>>. In
  traditional textures, wave-functions are supposed to be square-integrable,
  thus <math|f\<in\>L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>. This is
  essential for probability interpretation (axiom <reference|axiom:prob>). It
  is <hlink|well known|https://en.wikipedia.org/wiki/Fourier_transform>,
  however, that the Fourier transform of a square-integrable function may not
  be square-integrable again, so that its inverse Fourier transform may not
  exist. Since Fourier transform is basic in quantum mechamics, we shall seek
  for a smaller space in which wave-functions live. An ideal substitution is
  the (complex) Schwartz space. A <strong|Schwartz space>
  <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>> contains smooth function
  <math|f:\<bbb-R\><rsup|d>\<rightarrow\>\<bbb-C\>> that decays
  \Pexponentially fast\Q at infinity. Precisely, for any <math|m>-order
  polynomial <math|P<rsub|m>> and any <math|m>-order partial derivative
  <math|D<rsup|n>>, with integers <math|m,n\<geqslant\>0>, we have

  <\equation*>
    lim<rsub|<around*|\<\|\|\>|x|\<\|\|\>>\<rightarrow\>\<infty\>><around*|\||P<rsub|m><around*|(|x|)>D<rsup|n>f<around*|(|x|)>|\|>=0.
  </equation*>

  Functions in Schwartz space are usually termed as <strong|Schwartz
  function>s. Fourier transform is an automorphism on Schwartz space. And for
  any <math|f\<in\>L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>> and any
  <math|\<varepsilon\>\<gtr\>0>, there is a
  <math|g\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>> such that<\footnote>
    TODO: give a reference or a proof.
  </footnote>

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    <around*|\||f<around*|(|x|)>-g<around*|(|x|)>|\|><rsup|2>\<less\>\<varepsilon\>.
  </equation*>

  That is, <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>> is a dense
  subspace in <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>. It is in this
  sense that the substitution is plausible.

  Restriction from <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>> to
  <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>, however, is still
  insufficient. For example, in solving the stationary
  Schr<wide|o|\<ddot\>>dinger equation of one-dimensional harmonic
  oscillator, we suppose that wave-function has the form

  <\equation*>
    f<around*|(|x|)>=exp<around*|(|-x<rsup|2>|)>
    <around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>x<rsup|n>|]>,
  </equation*>

  where <math|a<rsub|n>>s are to be determined. The factor
  <math|exp<around*|(|-x<rsup|2>|)>> is employed for an exponentially fast
  decay as <math|<around*|\||x|\|>\<rightarrow\>\<infty\>> (thus faster than
  the inverse of any polynomial). And the factor
  <math|<around*|[|\<cdots\>|]>> is a Taylor series. Hence, <math|f> is an
  analytic function in Schwartz space. The energy quantization emerges for
  ensuring the convergence of the series <math|<big|sum><rsub|n>a<rsub|n>x<rsup|n>>.
  It indicates that we shall further restrict the space of wave-function to
  <strong|analytic Schwartz space>, denoted by
  <math|\<cal-S\><rsub|A><around*|(|\<bbb-R\><rsup|d>|)>>, which collects all
  the analytic functions in Schwartz space
  <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>. Analytic functions are
  dense in Schwartz space, meaning that for any
  <math|f\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>> and any
  <math|\<varepsilon\>\<gtr\>0>, there is a
  <math|g\<in\>\<cal-S\><rsub|A><around*|(|\<bbb-R\><rsup|d>|)>> such
  that<\footnote>
    TODO: give a reference or a proof.
  </footnote>

  <\equation*>
    sup<rsub|x\<in\>\<bbb-R\><rsup|d>><around*|\||f<around*|(|x|)>-g<around*|(|x|)>|\|>\<less\>\<varepsilon\>.
  </equation*>

  Notice that the norms employed for quantifying the approximations are
  different. While considering <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>\<subset\>L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>,
  we used the norm in <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>,
  integral on the squared norm of the difference, but in
  <math|\<cal-S\><rsub|A><around*|(|\<bbb-R\><rsup|d>|)>\<subset\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>,
  we used the <math|L<rsub|1>>-norm, the supremum on the norm of the
  difference.

  To prove that analytic functions are dense in Schwartz space, we introduce
  the convolution for a function <math|f\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>
  as

  <\equation*>
    f<rsub|n><around*|(|x|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    \<delta\><rsub|n><around*|(|x-y|)>f<around*|(|y|)>
  </equation*>

  by a \Pkernel\Q function

  <\equation*>
    \<delta\><rsub|n><around*|(|x|)>\<assign\><around*|(|<frac|n|2\<mathpi\>>|)><rsup|d/2>exp<around*|(|-<frac|n|2><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>|)>,
  </equation*>

  where <math|n=<around*|{|1,2,\<ldots\>|}>>. The <math|\<delta\><rsub|n>>
  function is recognized as Gaussian with variance <math|1/n>. We are to show
  that <math|f<rsub|n><around*|(|x|)>>s are all analytic, and that
  <math|f<rsub|n><around*|(|x|)>> tends to <math|f<around*|(|x|)>> as
  <math|n> tends to infinity. We left the proof of analyticity to reader (or
  an appendix).<\footnote>
    A method for proving analyticity is using complex analysis. We first
    extend the domain of <math|f<rsub|n>> from <math|\<bbb-R\><rsup|d>> to
    <math|\<bbb-C\><rsup|d>>. For each <math|z\<in\>\<bbb-C\><rsup|d>>,

    <\equation*>
      f<rsub|n><around*|(|z|)>=<around*|(|<frac|n|\<mathpi\>>|)><rsup|d/2><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
      exp<around*|(|-n<big|sum><rsub|\<alpha\>=1><rsup|d><around*|(|z<rsup|\<alpha\>>-y<rsup|\<alpha\>>|)><around*|(|<wide|z|\<bar\>><rsup|\<alpha\>>-y<rsup|\<alpha\>>|)>|)>f<around*|(|y|)>.
    </equation*>

    Thus, <math|f<rsub|n>> is analytic if and only if it is holomorphic. This
    is a direct result of <hlink|Cauchy integral
    formula|https://en.wikipedia.org/wiki/Cauchy%27s_integral_formula> (for
    multivariate function). Based on <hlink|Hartogs'
    theorem|https://en.wikipedia.org/wiki/Hartogs%27_theorem>, a multivariate
    complex function is holomorphic if and only if it is holomorphic in each
    variable separately. Since derivatives are taken on the exponential,
    which is holomorphic on <math|\<bbb-C\><rsup|d>>, it is manifest that
    Cauchy\URiemann equations hold for each component
    <math|z<rsup|\<alpha\>>> (it will be <math|<big|int>\<mathd\>y
    f<around*|(|x|)><around*|[|<text|Cauchy\URiemann equations of
    exponential>|]>>), which then implies that <math|f<rsub|n>> is
    holomorphic on <math|\<bbb-C\><rsup|d>>. So we find <math|f<rsub|n>>
    analytic on <math|\<bbb-R\><rsup|d>>. This proof is quite tricky, and we
    cannot <em|see> what is really happening.
  </footnote> For investigating the limit as <math|n\<rightarrow\>\<infty\>>,
  we change the variable of integral by replacing
  <math|y\<rightarrow\><around*|(|x-y|)>>, and find
  <math|f<rsub|n><around*|(|x|)>=<big|int>\<mathd\>y
  \<delta\><rsub|n><around*|(|y|)>f<around*|(|x-y|)>>. Since
  <math|<big|int>\<mathd\>x \<delta\><rsub|n><around*|(|y|)>=1>,

  we get

  <\align>
    <tformat|<table|<row|<cell|f<rsub|n><around*|(|x|)>-f<around*|(|x|)>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    \<delta\><rsub|n><around*|(|y|)><around*|[|f<around*|(|x-y|)>-f<around*|(|x|)>|]>>>|<row|<cell|=>|<cell|<around*|(|<frac|n|2\<mathpi\>>|)><rsup|d/2><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    exp<around*|(|-<frac|n|2><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>|)><around*|[|f<around*|(|x-y|)>-f<around*|(|x|)>|]>.>>>>
  </align>

  Now, we are to bound <math|<around*|\||f<rsub|n><around*|(|x|)>-f<around*|(|x|)>|\|>>.
  Observing the integrand, when <math|n> has been sufficiently large, we find
  it negligible out of the neighborhood <math|U<rsub|\<delta\>><around*|(|0|)>>
  for some <math|\<delta\>\<gtr\>0>. Indeed, as a Schwartz function, <math|f>
  can be uniformly bounded by a finite <math|M\<assign\>sup<rsub|x\<in\>\<bbb-R\><rsup|d>><around*|\||f<around*|(|x|)>|\|>>,
  hence <math|<around*|\||f<around*|(|x-y|)>-f<around*|(|x|)>|\|>\<less\>2M>.
  So, integral out of <math|U<rsub|\<delta\>><around*|(|0|)>> is bounded by

  <\equation*>
    2M<around*|(|<frac|n|2\<mathpi\>>|)><rsup|d/2><big|int><rsub|\<bbb-R\><rsup|d>\\U<rsub|\<delta\>><around*|(|0|)>>\<mathd\>y
    exp<around*|(|-<frac|n|2><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>|)>,
  </equation*>

  which tends to zero as <math|n\<rightarrow\>\<infty\>>. The integral within
  the <math|U<rsub|\<delta\>><around*|(|0|)>> is bounded by

  <\equation*>
    M<rprime|'><around*|(|<frac|n|2\<mathpi\>>|)><rsup|d/2><big|int><rsub|U<rsub|\<delta\>><around*|(|0|)>>\<mathd\>y
    exp<around*|(|-<frac|n|2><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>|)><around*|\||y|\|>,
  </equation*>

  where <math|M<rprime|'>\<assign\>sup<rsub|x\<in\>\<bbb-R\><rsup|d>><around*|\||\<partial\>f<around*|(|x|)>|\|>>
  is also finite. This integral also tends to zero as
  <math|n\<rightarrow\>\<infty\>>. TODO: make this more clear. So we find
  <math|lim<rsub|n\<rightarrow\>\<infty\>>f<rsub|n>=f>. As a corollary,
  <math|\<delta\><rsub|n>> has Dirac's <math|\<delta\>>-function as its
  limit. In fact, <math|\<delta\>>-function is <em|defined> as the limit of
  <math|\<delta\><rsub|n>> when it is applied (as convolution) on a Schwartz
  function.<\footnote>
    This profound construction is found in the lemma 15.1 of Topological
    Vector Spaces, Distributions and Kernels written by Francois Treves,
    1967.
  </footnote>

  <section|Superposition Principle and Time Evolution>

  First consider the analogy of master equation in stochastic process. The
  key feature of master equation is its linearity. The first axiom of quantum
  mechanics, superposition principle, claims the same linearity.

  <\axiom>
    [Superposition Principle]<label|axiom:sup> Physical laws that operate on
    quantum states shall be linear.
  </axiom>

  An implication of superposition principle is how quantum states (precisely,
  their wave-functions) evolve with time. To give raise to time evolution, we
  have to add time-dependence to wave-function, which makes a wave-function
  <math|f:\<bbb-R\><rsup|d>\<times\>\<bbb-R\>\<rightarrow\>\<bbb-C\>>, where
  <math|\<bbb-R\>> characterizes the time-axis. Then, axiom
  <reference|axiom:sup> claims that the equation of time evolution (as a
  physical law that operates on a quantum state) shall be linear:
  <math|\<partial\>f/\<partial\>t=L<around*|(|f|)>> where the operation
  <math|L> is linear.<\footnote>
    <with|color|red|Why not <math|\<partial\><rsup|2>f/\<partial\>t<rsup|2>=L<around*|(|f|)>>?>
    This may give rise to another axiom that we will know the whole history
    and future of a wave-function if we know it (or its norm, namely the
    distribution of particles) at any time <math|t>. In short, the
    evolutionary equation of wave-function is first order on time.
  </footnote> Mathematically, linearity imports a kernel
  <math|r:\<bbb-R\><rsup|d>\<times\>\<bbb-R\><rsup|d>\<rightarrow\>\<bbb-C\>>
  such that

  <\equation>
    \<mathi\><frac|\<partial\>f|\<partial\>t><around*|(|y,t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    f<around*|(|x,t|)>r<around*|(|x,y|)>.<label|equ:superposition>
  </equation>

  The right hand side can be seen as a generalization of linear
  transformation in <math|\<bbb-R\><rsup|n>> like
  <math|<big|sum><rsub|i=1><rsup|n>f<rsub|i> r<rsub|i j>>. The imaginary
  <math|\<mathi\>> is employed for convenience. You can compare equation
  <reference|equ:superposition> with the master equation of continuous time
  Markovian process. The only difference is the imaginary number in the
  front.

  <section|Probability Interpretation Implies Hermitianity>

  Then, the probability interpretation add restriction to the transition
  rate. In stochastic process, the restriction is about the normalization of
  transition density. But in quantum mechanics, it is about unitary.

  <\axiom>
    [Probability Interpretation]<label|axiom:prob> Given a wave-function
    <math|f> of quantum system, the probabilistic density that the system is
    found at configuration <math|x> is given by
    <math|<around*|\||f<around*|(|x|)>|\|><rsup|2>=f<rsup|\<ast\>><around*|(|x|)>f<around*|(|x|)>>.
  </axiom>

  Since probabilistic density shall be normalized, axiom
  <reference|axiom:prob> implies that, for any wave-function <math|f>,

  <\equation>
    <big|int><rsub|\<cal-X\>>\<mathd\>x f<rsup|\<ast\>><around*|(|x|)>f<around*|(|x|)>=1.<label|eq:probtoself>
  </equation>

  Since this equation holds for all wave-functions, time evolution sustains
  it too. Namely, for a time-dependent wave-function
  <math|f<around*|(|x,t|)>>,

  <\equation*>
    <big|int><rsub|\<cal-X\>>\<mathd\>x f<rsup|\<ast\>><around*|(|x,t|)>f<around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    f<rsup|\<ast\>><around*|(|x,t<rprime|'>|)>f<around*|(|x,t<rprime|'>|)>=1
  </equation*>

  holds for any <math|t,t<rprime|'>\<in\>\<bbb-R\>>. We are to show what this
  results in the transition rate <math|r> (which determines the time
  evolution). Equation <reference|eq:probtoself> gives

  <\equation*>
    f<around*|(|y,t+\<Delta\>t|)>=f<around*|(|y,t|)>-\<mathi\>\<Delta\>t<big|int>\<mathd\>x
    f<around*|(|x,t|)> r<around*|(|x,y|)>+\<omicron\><around*|(|\<Delta\>t|)>.
  </equation*>

  Plugging into equation <reference|eq:probtoself> for wave-function
  <math|f<around*|(|\<cdummy\>,t+\<Delta\>t|)>> gives

  <\equation*>
    <big|int><rsub|\<cal-X\>>\<mathd\>y<around*|[|f<rsup|\<ast\>><around*|(|y,t|)>+\<mathi\>\<Delta\>t<big|int><rsub|\<cal-X\>>\<mathd\>x
    f<rsup|\<ast\>><around*|(|x,t|)> r<rsup|\<ast\>><around*|(|x,y|)>|]><around*|[|f<around*|(|y,t|)>-\<mathi\>\<Delta\>t<big|int><rsub|\<cal-X\>>\<mathd\>x<rprime|'>
    f<around*|(|x<rprime|'>,t|)> r<around*|(|x<rprime|'>,y|)>|]>=1.
  </equation*>

  By inserting equation <reference|eq:probtoself> for wave-function
  <math|f<around*|(|\<cdummy\>,t|)>> and taking derivative on
  <math|\<Delta\>t>, it implies

  <\equation*>
    <big|int><rsub|\<cal-X\><rsup|2>>\<mathd\>x \<mathd\>y
    f<rsup|\<ast\>><around*|(|x,t|)>f<around*|(|y,t|)>
    <around*|[|r<rsup|\<ast\>><around*|(|x,y|)>-r<around*|(|y,x|)>|]>=0
  </equation*>

  holds for any <math|f> in <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>,
  thus

  <\equation>
    r<rsup|\<ast\>><around*|(|x,y|)>=r<around*|(|y,x|)>.<label|eq:hermit>
  </equation>

  Namely, <with|color|dark green|<em|<math|r> is Hermitian>>.<\footnote>
    A function <math|f:\<bbb-R\><rsup|d>\<times\>\<bbb-R\><rsup|d>\<rightarrow\>\<bbb-C\>>
    is <strong|Hermitian> if <math|f<rsup|\<ast\>><around*|(|x,y|)>=f<around*|(|y,x|)>>
    for each <math|x,y\<in\>\<bbb-R\><rsup|d>>. In the traditional approach
    of quantum mechanics, we have <math|r<around*|(|x,y|)>=\<langle\>y\|<wide|H|^>\|x\<rangle\>>,
    where <math|<wide|H|^>> is the Hamiltonian operator.
  </footnote>

  <section|Path Integral Formalism>

  In this section and the followings, we focus on the situation where
  <math|\<cal-X\>=\<bbb-R\><rsup|d>>, on which Fourier transform can be
  performed.<\footnote>
    This is critical for our analysis. But I think this can be generalized to
    any manifold on which the Green's function of Laplacian equation can be
    solved.
  </footnote> Thus, given <math|t>, we have wave-function
  <math|f<around*|(|\<cdummy\>,t|)>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>.

  We are trying to derive a generic path integral formalism. Given a small
  <math|\<Delta\>t\<gtr\>0>, equation <reference|equ:superposition> gives

  <\equation*>
    f<around*|(|x<rprime|'>,t+\<Delta\>t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    f<around*|(|x,t|)><around*|[|\<delta\><around*|(|x<rprime|'>-x|)>-\<mathi\>
    r<around*|(|x,x<rprime|'>|)>\<Delta\>t|]>+\<omicron\><around*|(|\<Delta\>t|)>
  </equation*>

  We are to convert the <math|<around*|[|\<cdots\>|]>> part into exponential.
  To do so, we use the inverse Fourier transformations

  <\equation*>
    \<delta\><around*|(|x<rprime|'>-x|)>=<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|(|\<mathi\>k<rsub|\<alpha\>><around*|(|x<rprime|'><rsup|\<alpha\>>-x<rsup|\<alpha\>>|)>|)>,
  </equation*>

  and

  <\equation*>
    r<around*|(|x,x<rprime|'>|)>=<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|(|\<mathi\>k<rsub|\<alpha\>><around*|(|x<rprime|'><rsup|\<alpha\>>-x<rsup|\<alpha\>>|)>|)>
    <wide|r|^><around*|(|x,k|)>,
  </equation*>

  in which

  <\equation>
    <wide|r|^><around*|(|x,k|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>\<epsilon\>
    exp<around*|(|-\<mathi\>k<rsub|\<alpha\>>\<epsilon\><rsup|\<alpha\>>|)>
    r<around*|(|x,x+\<epsilon\>|)>.<label|eq:hamiltonian>
  </equation>

  Then, the <math|<around*|[|\<cdots\>|]>> part is converted into exponential
  by

  <\align>
    <tformat|<table|<row|<cell|<around*|[|\<cdots\>|]>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|(|\<mathi\>k<rsub|\<alpha\>><around*|(|x<rprime|'><rsup|\<alpha\>>-x<rsup|\<alpha\>>|)>|)><around*|[|1-\<mathi\><wide|r|^><around*|(|x,k|)>\<Delta\>t|]>>>|<row|<cell|=>|<cell|<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|(|\<mathi\>k<rsub|\<alpha\>><around*|(|x<rprime|'><rsup|\<alpha\>>-x<rsup|\<alpha\>>|)>-\<mathi\><wide|r|^><around*|(|x,k|)>\<Delta\>t|)>+\<omicron\><around*|(|\<Delta\>t|)>>>>>
  </align>

  Plugging back to <math|f<around*|(|x<rprime|'>,t+\<Delta\>t|)> >results in

  <\equation*>
    f<around*|(|x<rprime|'>,t+\<Delta\>t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>
    f<around*|(|x,t|)>exp<around*|(|\<mathi\>k<rsub|\<alpha\>><around*|(|x<rprime|'><rsup|\<alpha\>>-x<rsup|\<alpha\>>|)>-\<mathi\><wide|r|^><around*|(|x,k|)>\<Delta\>t|)>+\<omicron\><around*|(|\<Delta\>t|)>
  </equation*>

  Re-denoting <math|x<rsub|0>\<assign\>x>,
  <math|x<rsub|1>\<assign\>x<rprime|'>>, <math|k<rsup|0>\<assign\>k> (for
  \Pbalancing\Q indices, we put the \Ptemporal\Q index of <math|k> as
  superscript, thus the <math|\<alpha\>>-component of the <math|k> at the
  <math|0>-th \Ptime-slice\Q is written by <math|k<rsup|0><rsub|\<alpha\>>>),

  <\equation*>
    f<around*|(|x<rsub|1>,t+\<Delta\>t|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rsub|0><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k<rsup|0>|<around*|(|2\<mathpi\>|)><rsup|d>>
    exp<around*|(|\<mathi\>k<rsup|0><rsub|\<alpha\>><around*|(|x<rsub|1><rsup|\<alpha\>>-x<rsub|0><rsup|\<alpha\>>|)>-\<mathi\><wide|r|^><around*|(|x<rsub|0>,k<rsup|0>|)>\<Delta\>t|)>f<around*|(|x<rsub|0>,t|)>+\<omicron\><around*|(|\<Delta\>t|)>
  </equation*>

  Repeating this process <math|N> times, we arrive at<\footnote>
    We have to show that the residue is an
    <math|\<omicron\><around*|(|N\<Delta\>t|)>>, but this is far from
    trivial.
  </footnote>

  <\equation>
    f<around*|(|x<rsub|N>,t+N \<Delta\>t|)>=<big|int>D<around*|(|x,k|)>
    f<around*|(|x<rsub|0>,t|)> exp<around*|(|\<mathi\>S<around*|(|x,k|)>|)>+\<omicron\><around*|(|N\<Delta\>t|)>,
  </equation>

  where the integral

  <\equation>
    <big|int>D<around*|(|x,k|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rsub|0><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k<rsup|0>|<around*|(|2\<mathpi\>|)><rsup|d>>
    \<cdots\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<rsub|N-1><big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k<rsup|N-1>|<around*|(|2\<mathpi\>|)><rsup|d>>
  </equation>

  and

  <\equation>
    S<around*|(|x,k|)>\<assign\><big|sum><rsub|i=0><rsup|N-1>\<Delta\>t<around*|[|<around*|(|<frac|x<rsup|\<alpha\>><rsub|i+1>-x<rsub|i><rsup|\<alpha\>>|\<Delta\>t>|)>k<rsup|i><rsub|\<alpha\>>-<wide|r|^><around*|(|x<rsub|i>,k<rsup|i>|)>|]>.
  </equation>

  If we recognize <math|<around*|(|x<rsub|i+1>-x<rsub|i>|)>/\<Delta\>t> as
  the velocity <math|<wide|x|\<dot\>><rsub|i>>, then the
  <math|S<around*|(|x,k|)>> can be seen as the Legendre transformation
  <math|<wide|x|\<dot\>> p-H<around*|(|x,p|)>>, in which <with|color|dark
  green|<em|<math|k> is proportional to momentum <math|p> and
  <math|<wide|r|^><around*|(|x,k|)>> plays the role of Hamiltonian
  <math|H<around*|(|x,p|)>>>>.

  <section|An Useful Expansion>

  In this section, we claim an mathematical theorem that is critical for
  continuing the journey. It extends a function in Schwartz space (ensuring
  Fourier transformation), to a generalized function. With this extension,
  the function can be expanded by a series of generalized functions.

  Define the <math|n>-th order <strong|moment> (with <math|n\<geqslant\>0>)
  of a function <math|M<rsub|n>:\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>\<rightarrow\>\<bbb-C\>>
  by

  <\equation>
    M<rsub|n><rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|n>><around*|(|f|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    f<around*|(|x|)> <around*|(|x<rsup|\<alpha\><rsub|1>>\<cdots\>x<rsup|\<alpha\><rsub|n>>|)>.<label|eq:moment>
  </equation>

  Since <math|f\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>, the moment
  <math|M<rsub|n><around*|(|f|)>> is finite for any <math|n>. Denote
  <math|\<cal-S\><rsub|A>> the subspace of Schwartz space in which every
  function is analytic, termed as <strong|analytic Schwartz space>. Then, for
  an arbitrary function <math|\<varphi\>\<in\>\<cal-S\><rsub|A><around*|(|\<bbb-R\><rsup|d>|)>>,
  Taylor expanding at origin gives

  <\align>
    <tformat|<table|<row|<cell|<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    f<around*|(|x|)> \<varphi\><around*|(|x|)>=>|<cell|<big|sum><rsub|n=0><rsup|+\<infty\>><frac|1|n!>
    <around*|[|<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x f<around*|(|x|)>
    <around*|(|x<rsup|\<alpha\><rsub|1>>\<cdots\>x<rsup|\<alpha\><rsub|n>>|)>|]>
    <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>\<varphi\>|)><around*|(|0|)>>>|<row|<cell|=>|<cell|<big|sum><rsub|n=0><rsup|+\<infty\>><frac|1|n!>
    M<rsub|n><rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|n>><around*|(|f|)>
    <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>\<varphi\>|)><around*|(|0|)>.>>>>
  </align>

  On the other hand, because of the identity

  <\equation*>
    <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>\<varphi\>|)><around*|(|0|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    \<delta\><around*|(|x|)> <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>\<varphi\>|)><around*|(|x|)>,
  </equation*>

  integration by parts on the right hand side gives

  <\equation*>
    <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>\<varphi\>|)><around*|(|0|)>=<around*|(|-1|)><rsup|n>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>\<delta\>|)><around*|(|x|)>\<varphi\><around*|(|x|)>,
  </equation*>

  where we have omitted the boundary terms since <math|\<varphi\>> is
  vanishing at boundary. Then, plugging this back, we find

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    f<around*|(|x|)>\<varphi\><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<around*|[|<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!>
    M<rsub|n><rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|n>><around*|(|f|)><around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>\<delta\>|)><around*|(|x|)>|]>\<varphi\><around*|(|x|)>.
  </equation*>

  Since <math|\<varphi\>> is arbitrary, we finall arrive at

  <\equation>
    f<around*|(|x|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!>
    M<rsub|n><rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|n>><around*|(|f|)>
    <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>\<delta\>|)><around*|(|x|)>.<label|eq:deltaexp>
  </equation>

  <with|color|dark green|<em|It shall be read as a formal expansion, or an
  \Palgorithm\Q (with which we obtain a valid expression of
  <math|<big|int>\<mathd\>x f<around*|(|x|)>\<varphi\><around*|(|x|)>>). Only
  by applying to an analytic Schwartz function can it make sense.>>

  Moments also relate to Fourier transformation. We have the Fourier
  transformation

  <\equation*>
    <wide|f|^><around*|(|k|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    exp<around*|(|-\<mathi\>k<rsub|\<alpha\>>x<rsup|\<alpha\>>|)>f<around*|(|x|)>.
  </equation*>

  Taking derivatives on <math|k> gives

  <\align>
    <tformat|<table|<row|<cell|<around*|(|\<partial\><rsup|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsup|\<alpha\><rsub|n>><wide|f|^>|)><around*|(|0|)>=>|<cell|lim<rsub|k\<rightarrow\>0><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    exp<around*|(|-\<mathi\>k<rsub|\<alpha\>>x<rsup|\<alpha\>>|)>f<around*|(|x|)><around*|(|-\<mathi\>|)><rsup|n><around*|(|x<rsup|\<alpha\><rsub|1>>\<cdots\>x<rsup|\<alpha\><rsub|n>>|)>>>|<row|<cell|=>|<cell|<around*|(|-\<mathi\>|)><rsup|n><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    f<around*|(|x|)><around*|(|x<rsup|\<alpha\><rsub|1>>\<cdots\>x<rsup|\<alpha\><rsub|n>>|)>.>>>>
  </align>

  Namely, the Taylor expansion coefficient of <math|<wide|f|^>> is
  <math|<around*|(|-\<mathi\>|)><rsup|n>M<rsub|n><around*|(|f|)>>, and

  <\equation>
    <wide|f|^><around*|(|k|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|n>|n!>M<rsub|n><rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|n>><around*|(|f|)><around*|(|k<rsub|\<alpha\><rsub|1>>\<cdots\>k<rsub|\<alpha\><rsub|n>>|)>.
  </equation>

  This relates the moments and the Fourier transformation of a function in
  analytic Schwartz space. <with|color|dark green|<em|We can construct the
  <math|f> out of a sequence of moments.>> For ensuring convergence, we
  further demand that <math|<wide|f|^>> is analytic, namely
  <math|<wide|f|^>\<in\>\<cal-S\><rsub|A><around*|(|\<bbb-R\><rsup|d>|)>>.

  <section|Expansion of Transition Rate>

  Now we apply the expansion derived in the previous section to transition
  rate <math|r<around*|(|x,y|)>>. Denote <math|R<rsub|n><around*|(|x|)>> as
  the <math|n>-th order moment of the map
  <math|\<epsilon\>\<mapsto\>r<around*|(|x,x+\<epsilon\>|)>>, that is (moment
  is defined by equation <reference|eq:moment>)

  <\equation>
    R<rsub|n><rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|n>><around*|(|x|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|n>>|)>r<around*|(|x,x+\<epsilon\>|)>.
  </equation>

  Using equation <reference|eq:deltaexp>, we directly get

  <\equation>
    r<around*|(|x,x+\<epsilon\>|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!>
    R<rsub|n><rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|n>><around*|(|x|)>
    <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>\<delta\>|)><around*|(|\<epsilon\>|)>.<label|eq:transexp>
  </equation>

  It claims that transition rate <math|r>, thus the time evolution of
  wave-function (equation <reference|equ:superposition>), is completely
  determined by the moments <math|R<rsub|n>>s.

  Plugging equation <reference|eq:transexp> back to equation
  <reference|equ:superposition> gives

  <\equation*>
    \<mathi\><frac|\<partial\>f|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>w
    f<around*|(|w,t|)>R<rsub|n><rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|n>><around*|(|w|)>
    <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>\<delta\>|)><around*|(|x-w|)>.
  </equation*>

  Using the parity of <math|\<partial\><rsup|n>\<delta\>>, we change
  <math|x-w> to <math|w-x> in <math|<around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>\<delta\>|)><around*|(|x-w|)>>.
  Then, after integration by parts, we integrate over <math|w>, which results
  in

  <\equation>
    \<mathi\><frac|\<partial\>f|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!>
    <around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>|)><around*|[|R<rsub|n><rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|n>><around*|(|x|)>f<around*|(|x,t|)>|]>.<label|eq:kmanalogy>
  </equation>

  This is a quantum analogy to the Kramers-Moyal expansion in stochastic
  process.

  Interestingly, the Taylor expansion of the \PHamiltonian\Q
  <math|<wide|r|^><around*|(|x,k|)>> also relates to the moments
  <math|R<rsub|n>>s (the <math|<wide|r|^><around*|(|x,k|)>> is defined by
  equation <reference|eq:hamiltonian>). Indeed, if we Taylor expand
  <math|<wide|r|^><around*|(|x,k|)>> by <math|k> at origin, then the
  coefficient is

  <\equation*>
    lim<rsub|k\<rightarrow\>0><frac|\<partial\>|\<partial\>k<rsub|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>k<rsub|\<alpha\><rsub|n>>><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>\<epsilon\>
    exp<around*|(|-\<mathi\>k<rsub|\<alpha\>>\<epsilon\><rsup|\<alpha\>>|)>r<around*|(|x,x+\<epsilon\>|)>=<around*|(|-\<mathi\>|)><rsup|n><around*|[|<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|n>>|)>r<around*|(|x,x+\<epsilon\>|)>|]>.
  </equation*>

  The <math|<around*|[|\<cdots\>|]>> is recognized as <math|R<rsub|n>>. So,
  <math|<wide|r|^><around*|(|x,k|)>> can be Taylor expanded as

  <\equation>
    <wide|r|^><around*|(|x,k|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<mathi\>|)><rsup|n>|n!>R<rsub|n><rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|n>><around*|(|x|)><around*|(|k<rsub|\<alpha\><rsub|1>>\<cdots\>k<rsub|\<alpha\><rsub|n>>|)>.<label|eq:expandbymoments>
  </equation>

  Again, the details of <math|S<around*|(|x,k|)>> can be completely
  determined by the moments <math|R<rsub|n>>s.

  Comparing with the traditional Hamiltonian
  <math|<wide|r|^><around*|(|x,k|)>=k<rsup|2>/<around*|(|2m|)>+V<around*|(|x|)>>,
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
    \<mathi\><frac|\<partial\>f|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<bbb-R\>>\<mathd\>y
    f<around*|(|y,t|)><around*|[|V<around*|(|x|)>\<delta\><around*|(|y-x|)>-<frac|1|2m>\<nabla\><rsup|2>\<delta\><around*|(|y-x|)>|]>=-<frac|1|2m>\<nabla\><rsup|2>f<around*|(|x,t|)>+V<around*|(|x|)>f<around*|(|x,t|)>,
  </equation*>

  which is exactly the Schr<wide|o|\<ddot\>>dinger equation.

  <section|On Analyticity>

  We have set wave-functions in the analytic Schwartz space in which every
  function is analytic. At the first sight, analyticity seems too strict. But
  practically, when we solve Schr<wide|o|\<ddot\>>dinger equation on some
  explicit instances such as harmonic oscillator or hydrogen atom (in both
  angular and radical equations), we does restrict ourselves to analytic
  functions.

  For example, when solving the stationary Schr<wide|o|\<ddot\>>dinger
  equation of one-dimensional harmonic oscillator, we suppose that
  wave-function has the form

  <\equation*>
    f<around*|(|x|)>=exp<around*|(|-x<rsup|2>|)>
    <around*|[|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>x<rsup|n>|]>,
  </equation*>

  where <math|a<rsub|n>>s are to be determined. The factor
  <math|exp<around*|(|-x<rsup|2>|)>> is employed for an exponentially fast
  decay as <math|<around*|\||x|\|>\<rightarrow\>\<infty\>> (thus faster than
  the inverse of any polynomial). And the factor
  <math|<around*|[|\<cdots\>|]>> is a Taylor series. Namely, <math|f> is in
  the analytic Schwartz space <math|\<cal-S\><rsub|A><around*|(|\<bbb-R\>|)>>.
  The energy quantization emerges for ensuring the convergence of the series
  <math|<big|sum><rsub|n>a<rsub|n>x<rsup|n>>.

  In the traditional textures of quantum mechanics, wave-functions are
  regarded as elements in <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>,
  such that <math|<big|int>\<mathd\>x<around*|\||f<around*|(|x|)>|\|><rsup|2>=1>
  (remark that <math|<around*|\||\<cdots\>|\|>> denotes the norm of complex
  number). In addition, some order of smoothness are appended so as to make
  the Schr<wide|o|\<ddot\>>dinger equation (involving a Laplacian)
  well-defined. Apparently, we have <math|\<cal-S\><rsub|A><around*|(|\<bbb-R\><rsup|d>|)>\<subset\>L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>.
  But, while solving a Schr<wide|o|\<ddot\>>dinger equation, we only consider
  the functions in <math|\<cal-S\><rsub|A><around*|(|\<bbb-R\><rsup|d>|)>>.
  So, as I think, the space <math|\<cal-S\><rsub|A><around*|(|\<bbb-R\><rsup|d>|)>>
  has been sufficient.

  Mathematically, if <math|\<cal-S\><rsub|A><around*|(|\<bbb-R\><rsup|d>|)>>
  is dense in <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>, then
  analyticity is fine. It means, we can approximate any function in
  <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>> by using a series of
  analytic Schwartz functions. This condition is much easier to be held yet
  quite powerful. The key point is that a function has negligible measure on
  the \Pboundary\Q of <math|\<bbb-R\><rsup|d>>. Precisely, for any
  <math|\<varepsilon\>\<gtr\>0>, there is an <math|X\<gtr\>0> such that

  <\equation*>
    <big|int><rsub|\<partial\>\<bbb-R\><rsup|d><around*|(|X|)>>\<mathd\>x
    <around*|\||f<around*|(|x|)>|\|><rsup|2>\<less\>\<varepsilon\>/2
  </equation*>

  where the set <math|\<partial\>\<bbb-R\><rsup|d><around*|(|X|)>\<assign\><around*|{|x\<in\>\<bbb-R\><rsup|d>:<around*|\<\|\|\>|x|\<\|\|\>>\<gtr\>X|}>>.
  So, we can simply omit the region <math|\<partial\>\<bbb-R\><rsup|d><around*|(|X|)>>
  and consider the <math|f> on the closed region
  <math|U<rsub|X><around*|(|0|)>\<assign\><around*|{|x\<in\>\<bbb-R\><rsup|d>:<around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\>X|}>>.
  Within this compact region, <hlink|Weierstrass approximation
  theorem|https://en.wikipedia.org/wiki/Stone%E2%80%93Weierstrass_theorem#Weierstrass_approximation_theorem>
  claims that <math|f> can be approximate by a polynomial at any precision.
  Namely, for any <math|\<delta\>\<gtr\>0>, there is a polynomial <math|p>
  such that

  <\equation*>
    <around*|\||f<around*|(|x|)>-p<around*|(|x|)>|\|>\<less\>\<delta\>
  </equation*>

  holds for any <math|x\<in\>U<rsub|X><around*|(|0|)>>. By defining
  <math|\<delta\>\<assign\>\<varepsilon\>/2<around*|\||U<rsub|X><around*|(|0|)>|\|>>
  where <math|<around*|\||\<cdots\>|\|>> is used for volume, we get

  <\equation*>
    <big|int><rsub|U<rsub|X><around*|(|0|)>>\<mathd\>x
    <around*|\||f<around*|(|x|)>-p<around*|(|x|)>|\|>\<less\>\<delta\>
    <around*|\||U<rsub|X><around*|(|0|)>|\|>=\<varepsilon\>/2.
  </equation*>

  But a polynomial cannot be negligible on the \Pboundary\Q
  <math|\<partial\>\<bbb-R\><rsup|d><around*|(|X|)>>. Instead, it will
  increase as <math|<around*|\<\|\|\>|x|\<\|\|\>><rsup|n>> where <math|n> is
  the order of the polynomial. Inspired by the solution of harmonic
  oscillator, we weight it by <math|exp<around*|(|-<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>|)>>.
  Namely, we use <math|p<around*|(|x|)> exp<around*|(|-<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>|)>>,
  instead of <math|p<around*|(|x|)>> alone, to approximate <math|f> on
  <math|\<bbb-R\><rsup|d>>, which means the polynomial
  <math|p<around*|(|x|)>> approximates <math|f<around*|(|x|)>exp<around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>|)>>
  in the compact region <math|U<rsub|X><around*|(|0|)>>. In fact, any
  function <math|w\<in\>\<cal-S\><rsub|A><around*|(|\<bbb-R\><rsup|d>|)>>
  that has a continuous inverse (namely, <math|1/w<around*|(|x|)>> is
  continuous on <math|x>) can serve as the weight function, and
  <math|exp<around*|(|-<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>|)>> is just an
  instance. We thus conclude, <with|color|dark green|<em|for any function
  <math|f\<in\>L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>> and any
  <math|\<varepsilon\>\<gtr\>0>, there are a polynomial <math|p> and an
  analytic Schwartz function <math|w> such that>>

  <\equation>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    <around*|\||f<around*|(|x|)>-p<around*|(|x|)>w<around*|(|x|)>|\|>\<less\>\<varepsilon\>.
  </equation>

  <with|color|dark green|<em|The <math|p<around*|(|x|)>w<around*|(|x|)>> is
  an analytic Schwartz function.>>

  Besides, we cannot generalize this to <math|<around*|\||f<around*|(|x|)>-p<around*|(|x|)>w<around*|(|x|)>|\|>\<less\>\<varepsilon\>>
  for any <math|x\<in\>\<bbb-R\><rsup|d>> because we can construct an
  <math|f> where it equals or approximates to <math|\<delta\><around*|(|x|)>
  \<varepsilon\>/2<rsup|n>> at distance <math|2<rsup|n>X> from origin. On the
  \Pboundary\Q <math|\<partial\>\<bbb-R\><rsup|d><around*|(|X|)>>,
  restriction <math|<big|int><rsub|\<partial\>\<bbb-R\><rsup|d><around*|(|X|)>><around*|\||f<around*|(|x|)>-p<around*|(|x|)>w<around*|(|x|)>|\|>\<less\>\<varepsilon\>>
  cannot imply <math|<around*|\||f<around*|(|x|)>-p<around*|(|x|)>w<around*|(|x|)>|\|>\<less\>\<delta\>>
  for any <math|\<delta\>>. Intuitively, this has been sufficient for our
  study: on the \Pboundary\Q the difference is bounded by measure, and within
  the \Pboundary\Q it is bounded at each position (stronger than by measure).

  If, however, <math|f\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>, then
  there is <math|X\<gtr\>0> such that <math|<around*|\||f<around*|(|x|)>-p<around*|(|x|)>w<around*|(|x|)>|\|>\<less\>\<varepsilon\>/2>
  hold for any <math|x\<in\>\<partial\>\<bbb-R\><rsup|d><around*|(|X|)>>,
  just because both <math|f> and <math|p<around*|(|x|)>w<around*|(|x|)>> tend
  to vanish on the \Pboundary\Q of <math|\<bbb-R\><rsup|d>>, so

  <\equation*>
    <around*|\||f<around*|(|x|)>-p<around*|(|x|)>w<around*|(|x|)>|\|>\<less\><around*|\||f<around*|(|x|)>|\|>+<around*|\||p<around*|(|x|)>w<around*|(|x|)>|\|>\<less\>\<varepsilon\>/2,
  </equation*>

  if we demand both <math|<around*|\||f<around*|(|x|)>|\|>\<less\>\<varepsilon\>/4>
  and <math|<around*|\||p<around*|(|x|)>w<around*|(|x|)>|\|>\<less\>\<varepsilon\>/4>
  by enlarging <math|X>. Then, we find, <with|color|dark green|<em|for any
  function <math|f\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>> and any
  <math|\<varepsilon\>\<gtr\>0>, there are a polynomial <math|p> and an
  analytic Schwartz function <math|w> such that>>

  <\equation>
    <around*|\||f<around*|(|x|)>-p<around*|(|x|)>w<around*|(|x|)>|\|>\<less\>\<varepsilon\>
  </equation>

  <with|color|dark green|holds for any <math|x\<in\>\<bbb-R\><rsup|d>>.>

  <section|Locality Imports a Cut-Off on Moments>

  We then introduce the third axiom about locality, and discuss what it will
  induce.

  <\axiom>
    [Locality]<label|axiom:local> Interaction shall be local.
  </axiom>

  This implies that the time evolution (equation
  <reference|equ:superposition>) is local. To make this clear, we consider an
  example, in which <math|R<rsub|n><around*|(|x|)>=c<rsup|n>> for some
  constant <math|c>, and set the dimension <math|d=1>. Then, the time
  evolution (equation <reference|eq:kmanalogy>) at <math|x=0> becomes

  <\equation*>
    \<mathi\><frac|\<partial\>f|\<partial\>t><around*|(|0,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-c|)><rsup|n>|n!>
    <frac|\<partial\><rsup|n>f|\<partial\>x<rsup|n>><around*|(|0,t|)>.
  </equation*>

  The last expression happens to be the Taylor series of
  <math|f<around*|(|x,t|)>> at <math|x=-c>, namely
  <math|f<around*|(|-c,t|)>>. So, we conclude that
  <math|R<rsub|n><around*|(|x|)>=c<rsup|n>> for some constant <math|c>
  implies

  <\equation*>
    \<mathi\><frac|\<partial\>f|\<partial\>t><around*|(|0,t|)>=f<around*|(|-c,t|)>.
  </equation*>

  If we change the value of <math|f> at <math|x=-c>, then the time evolution
  at <math|x=0> changes accordingly. It means non-locality.

  In physics, a local equation generally refers to an operation on <math|f>
  which contains <math|f> itself and <em|finite> number of partial
  derivatives of <math|f>, such as

  <\equation*>
    \<mathi\><frac|\<partial\>f|\<partial\>t><around*|(|x,t|)>=\<cal-L\><around*|(|f<around*|(|x,t|)>,<frac|\<partial\>f|\<partial\>x><around*|(|x,t|)>,<frac|\<partial\><rsup|2>f|\<partial\>x<rsup|2>><around*|(|x,t|)>,\<ldots\>,<frac|\<partial\><rsup|n>f|\<partial\>x<rsup|n>><around*|(|x,t|)>|)>,
  </equation*>

  where <math|\<cal-L\>> is an analytic function. This is easy to understand
  because to compute <math|<around*|(|\<partial\><rsup|n>f/\<partial\>x<rsup|n>|)><around*|(|0,t|)>>
  using numerical method with difference <math|\<Delta\>x>, only
  <math|f<around*|(|x,t|)>> with <math|x\<in\><around*|{|0,\<Delta\>x,\<ldots\>,n\<Delta\>x|}>>
  are employed. So, <math|<around*|(|\<partial\>f/\<partial\>t|)><around*|(|0,t|)>>
  cannot \Pperceive\Q the <math|f<around*|(|x,t|)>> outside the neighborhood
  <math|<around*|{|x:<around*|\||x|\|>\<leqslant\>n\<Delta\>x|}>>. Since
  <math|\<Delta\>x> can be arbitrarily small (but not vanishing), the
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
  the Taylor expansion of <math|f\<in\>\<cal-S\><rsub|A><around*|(|\<bbb-R\>,\<bbb-C\>|)>>
  at origin

  <\equation*>
    f<around*|(|x|)>=a<rsub|0>+a<rsub|1>x+a<rsub|2>x<rsup|2>+\<cdots\>.
  </equation*>

  The information of <math|f> is completely encoded in the infinite sequence
  of <math|a<rsub|n>>s. This is the result of a theorem which claims that two
  analytic functions are equal if they agree in any interval (hence we can
  obtain the Taylor series of the function within the interval). What if we
  only know a portion of the infinite sequence of <math|a<rsub|n>>s? For
  example, if we only know the <math|a<rsub|0>>, then only the value of
  <math|f<around*|(|x|)>> at <math|x=0> is determined. Further, if we also
  know the <math|a<rsub|1>>, then we can give a good approximation to
  <math|f<around*|(|x|)>> in a very tiny neighborhood of <math|x=0>, since
  <math|f<around*|(|x|)>=a<rsub|0>+a<rsub|1>x+\<omicron\><around*|(|x<rsup|2>|)>>.
  Then, if we additionally know the <math|a<rsub|2>>, then the approximation
  becomes as good as before in a larger neighborhood of <math|x=0>, since
  <math|f<around*|(|x|)>=a<rsub|0>+a<rsub|1>x+a<rsub|2>x<rsup|2>+\<omicron\><around*|(|x<rsup|3>|)>>
  and for keeping the scale of residue, the size of neighborhood can increase
  a little. This analysis indicates that the more <math|a<rsub|n>>s we know,
  in a larger neighborhood of <math|x=0> can we properly approximate
  <math|f<around*|(|x|)>>. Our vision becomes border and border if we know
  more and more <math|a<rsub|n>>s. Until knowing the whole sequence of
  <math|a<rsub|n>>s, we realize the complete picture of
  <math|f<around*|(|x|)>> (based on the previous theorem about analytic
  function).

  It also indicates that, for a sufficient large <math|N>, we can keep
  <math|f<around*|(|x|)>> (approximately) invariant when we tune the
  <math|a<rsub|n>>s with <math|n\<gtr\>N> while keep the other
  <math|a<rsub|n>>s invariant. So, based on the equation

  <\equation*>
    \<mathi\><frac|\<partial\>f|\<partial\>t><around*|(|0,t|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|1|n!>R<rsub|n><around*|(|0|)>a<rsub|n>,
  </equation*>

  if there is not a cut-off to the infinite sequence of
  <math|R<rsub|n><around*|(|0|)>>s, we can modify the
  <math|<around*|(|\<partial\>f/\<partial\>t|)><around*|(|0,t|)>> by tuning
  an <math|a<rsub|n>> where <math|n> can be arbitrarily large. This, however,
  will leave the <math|f<around*|(|x|)>> around <math|x=0> invariant. It
  means that the value of <math|f> with <math|x> far away from origin can
  affect the time evolution of <math|f> at origin. That is, time evolution is
  non-local. Hence, there must be a cut-off on the sequence of
  <math|R<rsub|n><around*|(|0|)>>s. This discussion also holds for any value
  of <math|x> other than <math|x=0>. We conclude that <with|color|dark
  green|<em|time evolution is local if and only if there is a positive
  integer <math|N<rsub|cut>> such that <math|R<rsub|n>=0> for any
  <math|n\<gtr\>N<rsub|cut>>>>.

  <section|Hermitianity on Moments><label|section:Hermitianity on Moments>

  Now we study the <math|R<rsub|n>>s. We first investigate what Hermitianity
  implies for our generic quantum mechanics. Hermitianity implies

  <\equation*>
    r<rsup|\<ast\>><around*|(|x,x+\<epsilon\>|)>=r<around*|(|x+\<epsilon\>,x|)>.
  </equation*>

  For simplicity, we temporally abbreviate the notations by
  <math|\<alpha\>\<assign\><around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>
  and <math|\<partial\><rsub|\<alpha\>><rsup|n>\<assign\>\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>>.<\footnote>
    It turns out that this is not a convenient abbreviation. Call for
    optimizations.
  </footnote> Then, the left hand side is expanded as

  <\equation*>
    r<rsup|\<ast\>><around*|(|x,x+\<epsilon\>|)>=<big|sum><rsub|n=0><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|n>|n!><around*|(|R<rsub|n><rsup|\<ast\>>|)><rsup|\<alpha\>><around*|(|x|)><around*|(|\<partial\><rsup|n><rsub|\<alpha\>>\<delta\>|)><around*|(|\<epsilon\>|)>,
  </equation*>

  and the right hand side

  <\equation*>
    r<around*|(|x+\<epsilon\>,x|)>=r<around*|(|x+\<epsilon\>,<around*|(|x+\<epsilon\>|)>-\<epsilon\>|)>=<big|sum><rsub|n=0><rsup|+\<infty\>><frac|1|n!>R<rsub|n><rsup|\<alpha\>><around*|(|x+\<epsilon\>|)><around*|(|\<partial\><rsup|n><rsub|\<alpha\>>\<delta\>|)><around*|(|\<epsilon\>|)>,
  </equation*>

  where we have used the relation <math|<around*|(|-1|)><rsup|n><around*|(|\<partial\><rsup|n><rsub|\<alpha\>>\<delta\>|)><around*|(|-\<epsilon\>|)>=<around*|(|\<partial\><rsup|n><rsub|\<alpha\>>\<delta\>|)><around*|(|\<epsilon\>|)>>.
  Put these together (left hand side minus the right hand side),

  <\equation*>
    <big|sum><rsub|n=0><rsup|+\<infty\>><frac|1|n!><around*|[|<around*|(|-1|)><rsup|n><around*|(|R<rsub|n><rsup|\<ast\>>|)><rsup|\<alpha\>><around*|(|x|)>-R<rsub|n><rsup|\<alpha\>><around*|(|x+\<epsilon\>|)>|]><around*|(|\<partial\><rsup|n><rsub|\<alpha\>>\<delta\>|)><around*|(|\<epsilon\>|)>=0.
  </equation*>

  Applying on an arbitrary function <math|\<varphi\>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>,\<bbb-C\>|)>>
  (integrating over <math|\<epsilon\>>), we get (after integration by parts)

  <\equation*>
    <big|sum><rsub|n=0><rsup|+\<infty\>><frac|1|n!><around*|[|<around*|(|R<rsub|n><rsup|\<ast\>>|)><rsup|\<alpha\>><around*|(|x|)>\<partial\><rsup|n><rsub|\<alpha\>>\<varphi\><around*|(|0|)>+<around*|(|-1|)><rsup|n+1>\<partial\><rsup|n><rsub|\<alpha\>><around*|[|R<rsub|n><rsup|\<alpha\>><around*|(|x|)>\<varphi\><around*|(|0|)>|]>|]>=0,
  </equation*>

  or using the original notations,

  <\equation*>
    <big|sum><rsub|n=0><rsup|+\<infty\>><frac|1|n!><around*|[|<around*|(|R<rsub|n><rsup|\<ast\>>|)><rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|n>><around*|(|x|)><around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>\<varphi\>|)><around*|(|0|)>+<around*|(|-1|)><rsup|n+1><around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|n>>|)><around*|[|R<rsub|n><rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|n>><around*|(|x|)>\<varphi\><around*|(|0|)>|]>|]>=0.
  </equation*>

  This is what the Hermitianity of transition rate <math|r> induces on the
  relation between moments <math|R<rsub|n>>s and their complex conjugations
  <math|R<rsub|n><rsup|\<ast\>>>s.

  Expanding this summation term by term, the left hand side becomes

  <\align>
    <tformat|<table|<row|<cell|<around*|\<llbracket\>|n=0|\<rrbracket\>>=>|<cell|<around*|(|R<rsub|0><rsup|\<ast\>>|)><around*|(|x|)>\<varphi\><around*|(|0|)>-R<rsub|0><rsup|\<alpha\>><around*|(|x|)>\<varphi\><around*|(|0|)>>>|<row|<cell|<around*|\<llbracket\>|n=1|\<rrbracket\>>+>|<cell|<around*|(|R<rsub|1><rsup|\<ast\>>|)><rsup|\<alpha\>><around*|(|x|)>\<partial\><rsub|\<alpha\>>\<varphi\><around*|(|0|)>+\<partial\><rsub|\<alpha\>>R<rsub|1><rsup|\<alpha\>><around*|(|x|)>\<varphi\><around*|(|x|)>+R<rsub|1><rsup|\<alpha\>><around*|(|x|)>\<partial\><rsub|\<alpha\>>\<varphi\><around*|(|0|)>>>|<row|<cell|<around*|\<llbracket\>|n=2|\<rrbracket\>>+>|<cell|<frac|1|2><around*|(|R<rsub|2><rsup|\<ast\>>|)><rsup|\<alpha\>\<beta\>><around*|(|x|)>\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<varphi\><around*|(|0|)>-<frac|1|2>\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>R<rsub|2><rsup|\<alpha\>\<beta\>><around*|(|x|)>\<varphi\><around*|(|0|)>-\<partial\><rsub|\<alpha\>>R<rsub|2><rsup|\<alpha\>\<beta\>><around*|(|x|)>\<partial\><rsub|\<beta\>>\<varphi\><around*|(|0|)>-<frac|1|2>R<rsub|2><rsup|\<alpha\>\<beta\>><around*|(|x|)>\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<varphi\><around*|(|0|)>>>|<row|<cell|<around*|\<llbracket\>|n\<gtr\>2|\<rrbracket\>>+>|<cell|\<cdots\>>>>>
  </align>

  Let us examine this temporal result. For simplicity, we set
  <math|R<rsub|n>=0> for any <math|n\<gtr\>2>. If <math|R<rsub|2>> is
  constant, then it implies <math|R<rsub|2>\<in\>\<bbb-R\>> (hint: collecting
  the term proportional to <math|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<varphi\><around*|(|0|)>>).
  It in turn leads to <math|R<rsub|1><rsup|\<ast\>><around*|(|x|)>=-R<rsub|1><around*|(|x|)>>,
  namely <math|R<rsub|1><around*|(|x|)>> is purely imaginary (this is a
  surprise). And then, <math|R<rsub|0><around*|(|x|)>=R<rsub|0><rsup|\<ast\>><around*|(|x|)>+\<partial\><rsub|\<alpha\>>R<rsub|1><rsup|\<alpha\>><around*|(|x|)>>.
  If further take <math|R<rsub|1>> as constant, then we get
  <math|R<rsub|0>:\<bbb-R\><rsup|d>\<rightarrow\>\<bbb-R\>>. This is the
  situation in the traditional Hamiltonian with dissipation.<\footnote>
    If <math|R<rsub|1>\<neq\>0>, such that
    <math|<wide|r|^><around*|(|x,k|)>=k<rsup|2>/<around*|(|2m|)>+\<mu\>k+V<around*|(|x|)>>
    for some constant <math|\<mu\>>, then the time-reversal symmetry breaks.
    Indeed, <math|\<mu\>k> serves as a friction term. But we usually treat
    systems with dissipation as incomplete.
  </footnote> This is the quantum mechanical analogy of Langevin process,
  where <math|R<rsub|n>> is cut-off at <math|n=2> (such that
  <math|R<rsub|n>=0> for any <math|n\<gtr\>2>) and <math|R<rsub|2>> is
  constant.

  Recall that the moments <math|R<rsub|n>>s are cut-off by
  <math|N<rsub|cut>>. The term that proportional to
  <math|\<partial\><rsup|N<rsub|cut>>\<varphi\><around*|(|0|)>> is

  <\equation*>
    <around*|[|<around*|(|R<rsub|N<rsub|cut>><rsup|\<ast\>>|)><rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|N<rsub|cut>>><around*|(|x|)>+<around*|(|-1|)><rsup|N<rsub|cut>>R<rsub|N<rsub|cut>><rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|N<rsub|cut>>><around*|(|x|)>|]><around*|(|\<partial\><rsub|\<alpha\><rsub|1>>\<cdots\>\<partial\><rsub|\<alpha\><rsub|N<rsub|cut>>>\<varphi\>|)><around*|(|0|)>=0.
  </equation*>

  It implies

  <\equation*>
    R<rsub|N<rsub|cut>><rsup|\<ast\>><around*|(|x|)>=<around*|(|-1|)><rsup|N<rsub|cut>>R<rsub|N<rsub|cut>><around*|(|x|)>.
  </equation*>

  Namely, <math|R<rsub|N<rsub|cut>><around*|(|x|)>> is real when
  <math|N<rsub|cut>> is even, and imaginary otherwise.

  TODO: give a recursive equation that determines the <math|R<rsub|n>>s from
  <math|R<rsub|N<rsub|cut>>> to <math|R<rsub|0>>.

  <section|Uncertainty Principle>

  An <strong|observable> is a real function of the configuration of a quantum
  system. A corollary of axiom <reference|axiom:prob> is that, given a
  wave-function <math|f> and an observable
  <math|O:\<bbb-R\><rsup|d>\<rightarrow\>\<bbb-R\>>, the observed value is
  the expactation <math|\<bbb-E\><rsub|f><around*|[|O|]>\<assign\><big|int>\<mathd\>x
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
    single particle quantum system, given a wave-function <math|f>, the
    variances of position and of velocity have the relation

    <\equation*>
      \<Delta\>x\<Delta\>v\<assign\><sqrt|Var<rsub|f><around*|[|x<around*|(|t|)>|]>
      Var<rsub|f><around*|[|v<around*|(|t|)>|]>>\<sim\>\<hbar\>/<around*|(|2m|)>,
    </equation*>

    where <math|m> is the mass of the particle, and <math|\<hbar\>> is the
    reduced Planck's constant.
  </axiom>

  In this section, we are to show how uncertainty principle restricts further
  to the transition rate. We first deal with the situation where dimension
  <math|d=1>. Since axiom <reference|axiom:uncert> holds for all
  wave-functions of a single particle, we choose <math|f> to be Gaussian at
  <math|t=0>, that is

  <\equation*>
    f<around*|(|x,0|)>=<around*|(|2\<mathpi\>\<sigma\><rsup|2>|)><rsup|-1/4>
    exp<around*|(|-<frac|x<rsup|2>|4\<sigma\><rsup|2>>|)>.
  </equation*>

  The coefficient guarantees the normalization of <math|f>. By axiom
  <reference|axiom:prob2>, we have

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
    R<rsub|N><around*|(|x|)>\<partial\><rsup|N>f<around*|(|x,0|)>\<Delta\>t|]><frac|x|\<Delta\>t>>>|<row|<cell|=>|<cell|\<mathi\><frac|<around*|(|-1|)><rsup|N>|N!><big|int><rsub|\<bbb-R\>>\<mathd\>x<around*|[|R<rsup|\<ast\>><rsub|N><around*|(|x|)>-
    R<rsub|N><around*|(|x|)>|]>\<partial\><rsup|N>f<around*|(|x,0|)>x+\<omicron\><around*|(|\<Delta\>t|)>.>>>>
  </align>

  When <math|N> is even, <math|R<rsub|N><around*|(|x|)>> is real (see section
  <reference|section:Hermitianity on Moments>), we find
  <math|\<bbb-E\><rsub|f><around*|[|v<around*|(|0|)>|]>=\<omicron\><around*|(|1|)>>.
  But when <math|N> is odd, <math|R<rsub|N><around*|(|x|)>> is imaginary. In
  this situation, denote <math|R<rsub|N><around*|(|x|)>=\<mathi\>A<around*|(|x|)>/2>,
  we get

  <\equation*>
    \<bbb-E\><rsub|f><around*|[|v<around*|(|0|)>|]>=<frac|<around*|(|-1|)><rsup|N>|N!><big|int><rsub|\<bbb-R\>>\<mathd\>x
    A<around*|(|x|)>\<partial\><rsup|N>f<around*|(|x,0|)>x+\<omicron\><around*|(|\<Delta\>t|)>,
  </equation*>

  which may not vanish up to <math|\<omicron\><around*|(|\<Delta\>t|)>>,
  leading to a violation of parity symmetry, because the velocity has a
  favored direction even though the distribution (or wave-function) has not.
  For simplicity, we assume the parity symmetry in this section, and consider
  the case where <math|N> is even.

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

  Then,

  <\equation*>
    \<bbb-E\><rsub|f><around*|[|v<rsup|2><around*|(|0|)>|]>=<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|<frac|1|N!>|)><rsup|2><frac|\<partial\><rsup|n>R<rsup|2><rsub|N><around*|(|0|)>|n!><big|int><rsub|\<bbb-R\>>\<mathd\>x<around*|[|\<partial\><rsup|N>f<around*|(|x,0|)>\<partial\><rsup|N>f<around*|(|x,0|)>-\<partial\><rsup|2N>f<around*|(|x,0|)>f<around*|(|x,0|)>|]>x<rsup|2+n>+\<omicron\><around*|(|1|)>.
  </equation*>

  Using maxima, we compute the term in <math|\<bbb-E\><rsub|f><around*|[|v<rsup|2><around*|(|0|)>|]>>
  for each <math|N> and <math|n>.<\footnote>
    First assume <verbatim|assume(\<sigma\> \<gtr\> 0)$>. Define <verbatim|N:
    7$ n: 10$> (for instance), <verbatim|f: (2*%pi*\<sigma\>^2)^(-1/4) *
    exp(-x^2 / (4*\<sigma\>^2))$>, and <verbatim| integrand: (diff(f, x,
    N)*diff(f, x, N) - diff(f, x, 2*N)*f) * x^(n+2)$>. Then
    <verbatim|at(diff(R2(x), x, n), x=0)/(N!^2)/n! * integrate(integrand, x,
    -inf, inf);> gives the <math|n>-th term in
    <math|\<bbb-E\><rsub|f><around*|[|v<rsup|2><around*|(|0|)>|]>>.
  </footnote> <with|color|dark green|<em|Restricted <math|N> to be positive
  even number, we shall have <math|R<rsub|N><around*|(|x|)>\<propto\>x<rsup|N-2>>
  so as to satisfy the uncertainty principle <reference|axiom:uncert>.>> Any
  other situation depends on <math|\<sigma\>>, which is either vanishing or
  diverging when <math|\<sigma\>> tends to zero. The specific case is
  <math|N=2> in which <math|R<rsub|N>> becomes constant. This is the
  canonical situation in physics.

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
    system, given a wave-function <math|f> <with|color|dark green|such that
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

  <section|Summary>

  TODO
</body>

<\initial>
  <\collection>
    <associate|bg-color|#c7edcc>
    <associate|page-medium|beamer>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|10|7>>
    <associate|auto-11|<tuple|11|8>>
    <associate|auto-12|<tuple|12|?>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|1>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|5|2>>
    <associate|auto-6|<tuple|6|3>>
    <associate|auto-7|<tuple|7|4>>
    <associate|auto-8|<tuple|8|5>>
    <associate|auto-9|<tuple|9|6>>
    <associate|axiom:local|<tuple|3|?>>
    <associate|axiom:prob|<tuple|2|?>>
    <associate|axiom:sup|<tuple|1|1>>
    <associate|axiom:uncert|<tuple|4|?>>
    <associate|axiom:uncert-ext|<tuple|5|?>>
    <associate|eq:deltaexp|<tuple|9|4>>
    <associate|eq:expandbymoments|<tuple|14|5>>
    <associate|eq:hamiltonian|<tuple|4|3>>
    <associate|eq:hermit|<tuple|3|2>>
    <associate|eq:kmanalogy|<tuple|13|5>>
    <associate|eq:moment|<tuple|8|3>>
    <associate|eq:probtoself|<tuple|2|2>>
    <associate|eq:transexp|<tuple|12|5>>
    <associate|equ:superposition|<tuple|1|1>>
    <associate|footnote-1|<tuple|1|?>>
    <associate|footnote-10|<tuple|10|?>>
    <associate|footnote-11|<tuple|11|?>>
    <associate|footnote-12|<tuple|12|?>>
    <associate|footnote-13|<tuple|13|?>>
    <associate|footnote-2|<tuple|2|?>>
    <associate|footnote-3|<tuple|3|?>>
    <associate|footnote-4|<tuple|4|?>>
    <associate|footnote-5|<tuple|5|?>>
    <associate|footnote-6|<tuple|6|?>>
    <associate|footnote-7|<tuple|7|?>>
    <associate|footnote-8|<tuple|8|?>>
    <associate|footnote-9|<tuple|9|?>>
    <associate|footnr-1|<tuple|1|?>>
    <associate|footnr-10|<tuple|10|?>>
    <associate|footnr-11|<tuple|11|?>>
    <associate|footnr-12|<tuple|12|?>>
    <associate|footnr-13|<tuple|13|?>>
    <associate|footnr-2|<tuple|2|?>>
    <associate|footnr-3|<tuple|3|?>>
    <associate|footnr-4|<tuple|4|?>>
    <associate|footnr-5|<tuple|5|?>>
    <associate|footnr-6|<tuple|6|?>>
    <associate|footnr-7|<tuple|7|?>>
    <associate|footnr-8|<tuple|8|?>>
    <associate|footnr-9|<tuple|9|?>>
    <associate|section:Hermitianity on Moments|<tuple|10|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>How
      to Read this Note?> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>On
      Wave-Function> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Superposition
      Principle and Time Evolution> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Probability
      Interpretation Implies Hermitianity>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Path
      Integral Formalism> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>An
      Useful Expansion> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Expansion
      of Transition Rate> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>On
      Analyticity> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Locality
      Imports a Cut-Off on Moments> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Hermitianity
      on Moments> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>Uncertainty
      Principle> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Summary>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>