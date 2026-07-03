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

  For functions, functionals, and operators that depend on time, we usually
  use subscript notation. For example, denote function
  <math|\<varphi\><rsub|t><around*|(|x|)>\<assign\>\<varphi\><around*|(|x,t|)>>,
  or inner product <math|\<langle\>f<rsub|t>,\<varphi\><rsub|t>\<rangle\>\<assign\><big|int>\<mathd\>x
  f<around*|(|x,t|)>\<varphi\><around*|(|x,t|)>>.

  <em|We will frequently employ abbreviations throughout this note. So, keep
  them in mind.>

  <section|Wavefunction Represents the State of Quantum System>

  In classical Newtonian world, the states of a physical system with <math|n>
  particles are represented by elements in <math|\<bbb-R\><rsup|6n>>, or
  <strong|phase>s, <math|3n> dimensions for positions and <math|3n> for
  velocities (or momenta). The time evolution is thus a trajectory in the
  phase space, namely a map <math|\<bbb-R\>\<rightarrow\>\<bbb-R\><rsup|6n>>
  (with time as the domain).

  But for a quantum system, the states are represented by wavefunctions. A
  <strong|wavefunction> is a map from the positions of particles, together
  with time, to complex numbers. Thus, a wavefunction maps
  <math|\<bbb-R\><rsup|d>\<times\>\<bbb-R\>\<rightarrow\>\<bbb-C\>> where
  <math|d=3n>. The first axiom claims how wavefunctions characterize a
  quantum system.

  <\axiom>
    <label|axiom:prob> The states of a quantum system are represented by
    wavefunctions. And given a wavefunction <math|\<varphi\>>, the
    probabilistic density that the particles are found in positions <math|x>
    at time <math|t> is given by <math|<around*|\||\<varphi\><around*|(|x,t|)>|\|><rsup|2>=\<varphi\><rsup|\<ast\>><around*|(|x,t|)>\<varphi\><around*|(|x,t|)>>.
  </axiom>

  It means a wavefunction is square-integrable. But, not every
  square-integrable function corresponds to a wavefunction of some quantum
  system in real world. Even though, we assume that\ 

  <\axiom>
    <label|axiom:dense> The collection of all wavefunctions that exist in
    real world is dense in square-integrable space. Explicitly, for any
    square-integrable function <math|f> and any
    <math|\<varepsilon\>\<gtr\>0>, there is a wavefunction <math|\<varphi\>>
    of some quantum system in real world, and a time instant <math|t>, such
    that

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
      <around*|\||f<around*|(|x|)>-\<varphi\><around*|(|x,t|)>|\|><rsup|2>\<less\>\<varepsilon\>.
    </equation*>
  </axiom>

  Superposition principle of quantum system implies that the time evolution
  of wavefunction is linear in wavefunction. It may be time-dependent. We
  further assume that it is continuous. Namely, a small variation of
  wavefunction results in a perturbative time evolution.

  <\axiom>
    <label|axiom:time-evol>Wavefunction evolves with time by

    <\equation*>
      \<mathi\><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>=\<cal-R\><rsub|t><around*|(|\<varphi\>|)><around*|(|x,t|)>,
    </equation*>

    where <math|\<cal-R\><rsub|t>:L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>\<rightarrow\><around*|[|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>|]><rprime|'>>
    is a time-dependent continuous linear operator.
  </axiom>

  Here, the codomain of <math|\<cal-R\><rsub|t>> is the dual space of
  <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>. All we need is that
  <math|<around*|(|\<partial\>\<varphi\>/\<partial\>t|)>> is finite only when
  it is applied by another wavefunction, namely

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    \<psi\><around*|(|x,t|)><frac|\<partial\>\<varphi\>|\<partial\>t><around*|(|x,t|)>\<less\>\<infty\>.
  </equation*>

  This is weaker than using <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>
  as the codomain, because <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>\<subset\><around*|[|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>|]><rprime|'>>.

  <section|Basic Mathematical Facts>

  <subsection|Lebesgue Integral and Limit>

  Throughout this note, when we talk about integral (or integrable), we mean
  Lebesgue integral (integrable). Lebesgue's definition of integral needs a
  measure space <math|<around*|(|X,\<cal-A\>,\<mu\>|)>> and a
  <math|\<cal-A\>>-measurable function <math|f> on <math|X>. But in most
  practical situations, there is no need to mention the
  <math|\<sigma\>>-algebra <math|\<cal-A\>>, which collects measurable
  subsets of <math|X>, and the measure <math|\<mu\>>, which defines the
  volume of measurable subsets. So, we simply call
  <math|\<cal-A\>>-measurable function as measurable function, without
  mentioning the <math|\<sigma\>>-algebra <math|\<cal-A\>>, and re-write the
  integral as (the right hand side is the original form)

  <\equation*>
    <big|int><rsub|X>\<mathd\>x f<around*|(|x|)>\<assign\><big|int><rsub|X>\<mathd\>\<mu\><around*|(|x|)>f<around*|(|x|)>,
  </equation*>

  where the measure <math|\<mu\>> is neglected.

  <\theorem>
    A function is integrable if and only if it is absolute integrable.
  </theorem>

  <\theorem>
    [Exchange Integrals, Fubini] Given an integrable function <math|f> on
    <math|X\<times\>Y>, we can safely exchange the integrals, as

    <\equation*>
      <big|int><rsub|X>\<mathd\>x<big|int><rsub|Y>\<mathd\>y
      f<around*|(|x,y|)>=<big|int><rsub|Y>\<mathd\>y<big|int><rsub|X>\<mathd\>x
      f<around*|(|x,y|)>.
    </equation*>
  </theorem>

  Now, we turn to the limit of integrals. Monotone convergence theorem (MCT)
  and Lebesgue's dominated convergence theorem (DCT) are the most important
  tools for investigating the limit of integrals.

  <\theorem>
    [MCT] Consider an infinite sequence of integral functions,
    <math|0\<leqslant\>f<rsub|1>\<leqslant\>f<rsub|2>\<leqslant\>\<cdots\>>
    almost everywhere on <math|X>, then we have

    <\equation*>
      lim<rsub|n\<rightarrow\>\<infty\>><big|int><rsub|X>\<mathd\>x
      f<rsub|n><around*|(|x|)>=<big|int><rsub|X>\<mathd\>x
      lim<rsub|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>.
    </equation*>
  </theorem>

  <\theorem>
    [DCT] Consider an infinite sequence of integral functions,
    <math|<around*|(|f<rsub|1>,f<rsub|2>,\<ldots\>|)>>. If there is a
    positive integrable function <math|g> such that
    <math|<around*|\||f<rsub|n>|\|>\<leqslant\>g> almost everywhere on
    <math|X>, then we have

    <\equation*>
      lim<rsub|n\<rightarrow\>\<infty\>><big|int><rsub|X>\<mathd\>x
      f<rsub|n><around*|(|x|)>=<big|int><rsub|X>\<mathd\>x
      lim<rsub|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>.
    </equation*>
  </theorem>

  The <math|f<rsub|n>>s are all dominated by <math|g>. For our purpose, DCT
  is most useful.

  <\corollary>
    [Exchange Integral with Series] Consider an infinite sequence of integral
    functions, <math|<around*|(|f<rsub|1>,f<rsub|2>,\<ldots\>|)>>. If

    <\equation*>
      <big|sum><rsub|n=1><rsup|\<infty\>><big|int><rsub|X>\<mathd\>x
      <around*|\||f<rsub|n><around*|(|x|)>|\|>\<less\>\<infty\>,
    </equation*>

    then

    <\equation*>
      <big|sum><rsub|n=1><rsup|\<infty\>><big|int><rsub|X>\<mathd\>x
      f<rsub|n><around*|(|x|)>=<big|int><rsub|X>\<mathd\>x
      <big|sum><rsub|n=1><rsup|\<infty\>>f<rsub|n><around*|(|x|)>.
    </equation*>
  </corollary>

  <\proof>
    Denote

    <\equation*>
      g<rsub|N><around*|(|x|)>\<assign\><big|sum><rsub|n=1><rsup|N><around*|\||f<rsub|n><around*|(|x|)>|\|>.
    </equation*>

    We have <math|0\<leqslant\>g<rsub|1>\<leqslant\>g<rsub|2>\<leqslant\>\<cdots\>>,
    thus by MCT,

    <\equation*>
      <big|int><rsub|X>\<mathd\>x lim<rsub|N\<rightarrow\>\<infty\>>g<rsub|N><around*|(|x|)>=lim<rsub|N\<rightarrow\>\<infty\>><big|int><rsub|X>\<mathd\>x
      g<rsub|N><around*|(|x|)>=lim<rsub|N\<rightarrow\>\<infty\>><big|sum><rsub|n=1><rsup|N><big|int><rsub|X>\<mathd\>x<around*|\||f<rsub|n><around*|(|x|)>|\|>\<less\>\<infty\>.
    </equation*>

    So, the positive function <math|g<around*|(|x|)>\<assign\>lim<rsub|N\<rightarrow\>\<infty\>>g<rsub|N><around*|(|x|)>>
    is integrable. In addition, we have

    <\equation*>
      <around*|\||<big|sum><rsub|n=1><rsup|N>f<rsub|n><around*|(|x|)>|\|>\<leqslant\><big|sum><rsub|n=1><rsup|N><around*|\||f<rsub|n><around*|(|x|)>|\|>=g<rsub|N><around*|(|x|)>\<leqslant\>g<around*|(|x|)>.
    </equation*>

    By DCT,

    <\equation*>
      lim<rsub|N\<rightarrow\>\<infty\>><big|sum><rsub|n=1><rsup|N><big|int><rsub|X>\<mathd\>x
      f<rsub|n><around*|(|x|)>=<big|int><rsub|X>\<mathd\>x
      lim<rsub|N\<rightarrow\>\<infty\>><big|sum><rsub|n=1><rsup|N>f<rsub|n><around*|(|x|)>,
    </equation*>

    which is what we want.

    A more elegant proof is converting the series as integral by defining a
    proper measure. Then exchanging integral with series becomes exchanging
    two integrals, which has been proven.
  </proof>

  <\corollary>
    [Exchange Integral with Derivative] Consider a function
    <math|f:X\<times\>Y\<rightarrow\>\<bbb-C\>> that, for each
    <math|x\<in\>X> and <math|y\<in\>Y>, <math|<around*|(|\<partial\>f/\<partial\>x|)><around*|(|x,y|)>>
    and <math|<big|int><rsub|Y>\<mathd\>y f<around*|(|x,y|)>> are
    well-defined, and <math|<around*|(|\<partial\>f/\<partial\>x|)><around*|(|x,y|)>>
    is continuous. If there is a positive integrable function <math|g> such
    that

    <\equation*>
      <around*|\||<frac|\<partial\>f|\<partial\>x><around*|(|x,y|)>|\|>\<leqslant\>g<around*|(|y|)>
    </equation*>

    holds for each <math|x\<in\>X> and almost every <math|y\<in\>Y>, then we
    have

    <\equation*>
      <frac|\<partial\>|\<partial\>x><big|int><rsub|Y>\<mathd\>y
      f<around*|(|x,y|)>=<big|int><rsub|Y>\<mathd\>y
      <frac|\<partial\>f|\<partial\>x><around*|(|x,y|)>.
    </equation*>
  </corollary>

  <\proof>
    Since <math|<around*|(|\<partial\>f/\<partial\>x|)><around*|(|x,y|)>> is
    continuous, by mean value theorem, for each <math|<around*|(|x,y|)>> and
    <math|\<Delta\>x\<gtr\>0>, there is a
    <math|\<xi\><around*|(|x,y,\<Delta\>x|)>> such that

    <\equation*>
      <frac|f<around*|(|x+\<Delta\>x,y|)>-f<around*|(|x,y|)>|\<Delta\>x>=<frac|\<partial\>f|\<partial\>x><around*|(|\<xi\><around*|(|x,y,\<Delta\>x|)>,y|)>,
    </equation*>

    where <math|\<xi\><around*|(|x,y,\<Delta\>x|)>\<rightarrow\>x> as
    <math|\<Delta\>x> tends to infinity. Thus,

    <\equation*>
      <around*|\||<frac|\<partial\>f|\<partial\>x><around*|(|\<xi\><around*|(|x,y,\<Delta\>x|)>,y|)>|\|>\<leqslant\>g<around*|(|y|)>.
    </equation*>

    Regarding <math|\<Delta\>x=<around*|(|1/n|)>> for a positive integer
    <math|n> (thus <math|\<Delta\>x\<rightarrow\>0> is
    <math|n\<rightarrow\>\<infty\>>), MCT gives

    <\equation*>
      lim<rsub|\<Delta\>x\<rightarrow\>0><big|int><rsub|Y>\<mathd\>y
      <frac|f<around*|(|x+\<Delta\>x,y|)>-f<around*|(|x,y|)>|\<Delta\>x>=<big|int><rsub|Y>\<mathd\>y
      lim<rsub|\<Delta\>x\<rightarrow\>0><frac|\<partial\>f|\<partial\>x><around*|(|\<xi\><around*|(|x,y,\<Delta\>x|)>,y|)>.
    </equation*>

    Notice that the left hand side is (also by the linearity of integral)

    <\equation*>
      lim<rsub|\<Delta\>x\<rightarrow\>0><frac|1|\<Delta\>x><around*|[|<big|int><rsub|Y>\<mathd\>y
      f<around*|(|x+\<Delta\>x,y|)>-<big|int><rsub|Y>\<mathd\>y
      f<around*|(|x,y|)>|]>=<frac|\<partial\>|\<partial\>x><big|int><rsub|Y>\<mathd\>y
      f<around*|(|x,y|)>,
    </equation*>

    while the right hand side is

    <\equation*>
      <big|int><rsub|Y>\<mathd\>y lim<rsub|\<Delta\>x\<rightarrow\>0><frac|\<partial\>f|\<partial\>x><around*|(|\<xi\><around*|(|x,y,\<Delta\>x|)>,y|)>=<big|int><rsub|Y>\<mathd\>y
      <frac|\<partial\>f|\<partial\>x><around*|(|x,y|)>.
    </equation*>

    Putting these together gives what we want.
  </proof>

  <subsection|Linear Functionals and Operators>

  <\definition>
    [Continuous Map] Given two normed spaces <math|A> and <math|B>. A linear
    map <math|F:A\<rightarrow\>B> is called <strong|continuous> if, for any
    <math|\<varepsilon\>\<gtr\>0>, there is <math|\<delta\>\<gtr\>0> such
    that, for any <math|\<varphi\>,\<psi\>\<in\>A> with
    <math|<around*|\<\|\|\>|\<varphi\>-\<psi\>|\<\|\|\>><rsub|A>\<less\>\<delta\>>,
    we have

    <\equation*>
      <around*|\<\|\|\>|F\<varphi\>-F\<psi\>|\<\|\|\>><rsub|B>\<less\>\<varepsilon\>.
    </equation*>
  </definition>

  An equivalent but more intuitive definition is that, for a sequence
  <math|\<varphi\><rsub|n>> that tends to <math|\<varphi\>> as <math|n>
  increase, we have <math|F\<varphi\><rsub|n>> tends to <math|F\<varphi\>>.

  <\theorem>
    Given two normed spaces <math|A> and <math|B>. A linear map
    <math|F:A\<rightarrow\>B> is continuous if and only if there is a
    constant <math|C> such that

    <\equation*>
      <around*|\<\|\|\>|F\<varphi\>|\<\|\|\>><rsub|B>\<leqslant\>C<around*|\<\|\|\>|\<varphi\>|\<\|\|\>><rsub|A>
    </equation*>

    holds for any <math|\<varphi\>\<in\>A>.
  </theorem>

  This is a direct result of linearity.

  <subsection|Square-Integrable Functions>

  We are to figure out what a square-integrable function looks like.

  A function is called <strong|compact-supported> if its support is compact.
  On Euclidean space, this means the support is a finite closed set. Denote
  <math|C<rsub|c><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|d>|)>> as set of
  all smooth compact-supported functions on <math|\<bbb-R\><rsup|d>><math|>,
  where the subscript <math|c> hints for \Pcompact-supported\Q. The picture
  is that a square-integrable function is close to a smooth compact-supported
  function.

  <\theorem>
    <label|theorem:cs-dense-l2>Smooth compact-supported functions are dense
    in square-integrable space. Namely, for any
    <math|f\<in\>L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>> and any
    <math|\<varepsilon\>\<gtr\>0>, there is
    <math|\<varphi\>\<in\>C<rsub|c><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|d>|)>>
    such that

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
      <around*|\||f<around*|(|x|)>-\<varphi\><around*|(|x|)>|\|><rsup|2>\<less\>\<varepsilon\>.
    </equation*>
  </theorem>

  <\proof>
    [Sketch] The proof goes in three steps. The first is that continuous
    compact-supported functions are dense in square-integrable space, which
    is a basic fact of Lebesgue integral. The next is polishing the continuos
    function to make it smooth, by convoluting with the standard polishing
    function. The final step is proving that the convolution satisfies the
    inequality we want, which employs the continuity.
  </proof>

  <subsection|Rapid Decreasing Functions and Distributions>

  <\definition>
    [Rapid Decreasing Function, Schwartz Space] TODO
  </definition>

  The reason why rapid decreasing functions are critical in our task is that
  Fourier transform is an automorphism in
  <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>.

  <\theorem>
    [Fourier Transform] For any <math|\<varphi\>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>,
    define

    <\equation*>
      <wide|\<varphi\>|^><around*|(|k|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
      exp<around*|(|-\<mathi\>k x|)>\<varphi\><around*|(|x|)>.
    </equation*>

    We have <math|<wide|\<varphi\>|^>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>,
    and

    <\equation*>
      \<varphi\><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|d>><frac|\<mathd\>k|<around*|(|2\<mathpi\>|)><rsup|d>>exp<around*|(|\<mathi\>k
      x|)><wide|\<varphi\>|^><around*|(|k|)>.
    </equation*>
  </theorem>

  Because any smooth compact-supported function are rapid decreasing, we can
  approximate a square-integrable function by rapid decreasing functions in
  any precision.

  <\corollary>
    <label|theorem:schwartz-dense-l2>Rapid Decreasing Functions are dense in
    square-integrable space.
  </corollary>

  So far for rapid decreasing functions. Now we turn to continuous linear
  operator. We are to show that restriction of continuous linear operator is
  also continuous.

  <\lemma>
    <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>> is a subspace of
    <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>. The inclusion
    <math|i:\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>\<hookrightarrow\>L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>
    is continuous.
  </lemma>

  <\proof>
    We have to prove that there are constants <math|C>, <math|\<alpha\>>, and
    <math|\<beta\>> such that, for any <math|\<varphi\>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>,

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<around*|\||\<varphi\><around*|(|x|)>|\|><rsup|2>\<leqslant\>C<around*|\<\|\|\>|\<varphi\>|\<\|\|\>><rsub|\<alpha\>,\<beta\>><rsup|2>=C
      sup<rsub|x\<in\>\<bbb-R\><rsup|d>><around*|\||<around*|(|1+<around*|\||x|\|><rsup|\<alpha\>>|)>\<partial\><rsup|\<beta\>>\<varphi\><around*|(|x|)>|\|><rsup|2>.
    </equation*>

    TODO
  </proof>

  The dual space of <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>,
  generally denoted by <math|<around*|[|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>|]><rsup|\<ast\>>>
  or <math|<around*|[|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>|]><rprime|'>>,
  collects all continuous linear functionals on
  <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>. The same, the dual space
  of <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>, denoted by
  <math|\<cal-S\><rprime|'><around*|(|\<bbb-R\><rsup|d>|)>>, collects all
  continuous linear functionals of <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>.

  <\lemma>
    <math|<around*|[|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>|]><rprime|'>>
    is a subspace of <math|\<cal-S\><rprime|'><around*|(|\<bbb-R\><rsup|d>|)>><math|>.
    The inclusion <math|i<rprime|'>:<around*|[|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>|]><rprime|'>\<hookrightarrow\>S<rprime|'><around*|(|\<bbb-R\><rsup|d>|)>>,
    as the dual of inclusion <math|i>, is continuos.
  </lemma>

  <\theorem>
    Given a continuous linear operator <math|A:L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>\<rightarrow\><around*|[|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>|]><rprime|'>>,
    define operator <math|A<rsub|\<cal-S\>>> as its restriction on subspace
    <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>. Then,
    <math|A<rsub|\<cal-S\>>:\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>\<rightarrow\>\<cal-S\><rprime|'><around*|(|\<bbb-R\><rsup|d>|)>>
    is also continuous.
  </theorem>

  <\proof>
    The maps in the chain <math|A<rsub|\<cal-S\>>:\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)><above|\<hookrightarrow\>|i>L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)><above|\<rightarrow\>|A><around*|[|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>|]><rprime|'><above|\<hookrightarrow\>|i<rprime|'>>S<rprime|'><around*|(|\<bbb-R\><rsup|d>|)>>
    are all continuous, so is <math|A<rsub|\<cal-S\>>>.
  </proof>

  This indicates that, after turning attention from
  <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>> to
  <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>, we can investigate the
  restricted operator on <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>
  instead of the original that is applied on
  <math|L<rsup|2><around*|(|\<bbb-R\><rsup|d>|)>>. Now, we can replace
  square-integrable space (and its dual) by its dense subspace of rapid
  decreasing functions (and its dual).

  Now, we look closer to the dual space <math|\<cal-S\><rprime|'><around*|(|\<bbb-R\><rsup|d>|)>>.
  The elements of <math|\<cal-S\><rprime|'><around*|(|\<bbb-R\><rsup|d>|)>>
  are also called <strong|generalized function>s or <strong|tempered
  distribution>s. We usually denote the application of a tempered
  distribution <math|f> to a function <math|\<varphi\>> by the bracket
  notation <math|\<langle\>f,\<varphi\>\<rangle\>>. To give intuitions about
  what a tempered distribution looks like, we first show that a rapid
  decreasing function is itself a tempered distribution.

  <\lemma>
    Given <math|\<psi\>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>, for
    any sequence <math|\<varphi\><rsub|n>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>,
    the integral

    <\equation*>
      lim<rsub|n\<rightarrow\>\<infty\>><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
      \<psi\><around*|(|x|)>\<varphi\><rsub|n><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
      \<psi\><around*|(|x|)><around*|[|lim<rsub|n\<rightarrow\>\<infty\>>\<varphi\><rsub|n><around*|(|x|)>|]>.
    </equation*>
  </lemma>

  <\proof>
    As a rapid decreasing function, <math|<around*|\||\<psi\><around*|(|x|)>\<varphi\><around*|(|x|)>|\|>\<leqslant\>C/<around*|[|1+<around*|\<\|\|\>|x|\<\|\|\>><rsup|m>|]>>
    for some constants <math|C> and any <math|m>, which is integrable when
    <math|m> is large enough. Then DMT ensures the exchange.
  </proof>

  It indicates that a rapid decreasing function <math|\<psi\>> is itself a
  tempered distribution, by defining the application

  <\equation*>
    \<langle\>\<psi\>,\<varphi\>\<rangle\>\<assign\><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
    \<psi\><around*|(|x|)>\<varphi\><around*|(|x|)>
  </equation*>

  for any <math|\<varphi\>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>.
  So, we find <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>> is a subspace
  of <math|\<cal-S\><rprime|'><around*|(|\<bbb-R\><rsup|d>|)>>. Some author
  apply the integral notation also to tempered distributions that are not
  functions, such as Dirac's <math|\<delta\>>-function. We will not do so,
  but strictly using the bracket notation instead.

  In fact, the subspace <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>, or
  even better, the subspace <math|C<rsub|c><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|d>|)>>,
  is dense in <math|\<cal-S\><rprime|'><around*|(|\<bbb-R\><rsup|d>|)>>.

  <\theorem>
    Smooth compact-supported functions are dense in the space of tempered
    distributions. Explicitly, for any <math|f\<in\>\<cal-S\><rprime|'><around*|(|\<bbb-R\><rsup|d>|)>>
    and any <math|\<varepsilon\>\<gtr\>0>, there is a
    <math|g\<in\>C<rsup|\<infty\>><rsub|c><around*|(|\<bbb-R\><rsup|d>|)>>
    such that

    <\equation*>
      <around*|\||\<langle\>f,\<varphi\>\<rangle\>-\<langle\>g,\<varphi\>\<rangle\>|\|>\<less\>\<varepsilon\>
    </equation*>

    holds for any <math|\<varphi\>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>.
  </theorem>

  <\proof>
    [Sketch] The proof goes in three steps. First, consider the Gaussian
    function

    <\equation*>
      \<delta\><rsub|x,n><around*|(|y|)>\<assign\><around*|(|<frac|n|2\<mathpi\>>|)><rsup|d/2>exp<around*|(|-<frac|n<around*|(|y-x|)><rsup|2>|2>|)>.
    </equation*>

    Define

    <\equation*>
      f<rsub|n><around*|(|x|)>\<assign\>\<langle\>f,\<delta\><rsub|x,n>\<rangle\>.
    </equation*>

    We have <math|f<rsub|n>\<in\>C<rsup|\<infty\>><around*|(|\<bbb-R\><rsup|d>|)>>
    because <math|\<partial\><rsub|\<alpha\>>\<delta\><rsub|x,n>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>
    and

    <\equation*>
      <around*|\||\<partial\><rsub|\<alpha\>>f<rsub|n><around*|(|x|)>|\|>=<around*|\||\<partial\><rsub|\<alpha\>>\<langle\>f,\<delta\><rsub|x,n>\<rangle\>|\|>=<around*|\||\<langle\>f,\<partial\><rsub|\<alpha\>>\<delta\><rsub|x,n>\<rangle\>|\|>\<less\>\<infty\>,
    </equation*>

    where we have moved partial derivative into the functional application
    because <math|f> is linear and continuous. We also have <math|f<rsub|n>>
    tends to <math|f> as <math|n> increase in the sense that, for any
    <math|\<varphi\>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>,

    <\equation*>
      \<langle\>f<rsub|n>,\<varphi\>\<rangle\>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
      f<rsub|n><around*|(|x|)>\<varphi\><around*|(|x|)>\<rightarrow\>\<langle\>f,\<varphi\>\<rangle\>.
    </equation*>

    To see this, inserting the definition of <math|f<rsub|n>> and using
    linearity, we have

    <\equation*>
      \<langle\>f<rsub|n>,\<varphi\>\<rangle\>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
      \<langle\>f,\<delta\><rsub|x,n>\<rangle\>\<varphi\><around*|(|x|)>=\<langle\>f,<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x\<delta\><rsub|x,n>\<varphi\><around*|(|x|)>\<rangle\>.
    </equation*>

    The function being applied is

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x\<delta\><rsub|x,n><around*|(|y|)>\<varphi\><around*|(|x|)>=<around*|(|<frac|n|2\<mathpi\>>|)><rsup|d/2><big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x
      exp<around*|(|-<frac|n<around*|(|y-x|)><rsup|2>|2>|)>\<varphi\><around*|(|x|)>\<rightarrow\>\<varphi\><around*|(|y|)>
    </equation*>

    as <math|n> tends to infinity. So, continuity of <math|f> results in

    <\equation*>
      lim<rsub|n\<rightarrow\>\<infty\>>\<langle\>f<rsub|n>,\<varphi\>\<rangle\>=\<langle\>f,\<varphi\>\<rangle\>.
    </equation*>

    This finishes the first step. Next, define
    <math|<wide|f|~><rsub|n,L>\<assign\>\<chi\><rsub|L>\<circ\>f<rsub|n>>
    where <math|\<chi\><rsub|L>> can be any smooth function that vanishes
    outside the box <math|<around*|[|-L,L|]><rsup|d>> but
    <math|\<chi\><rsub|L><around*|(|x|)>=1> for any <math|x> in a smaller box
    <math|<around*|[|-L+\<varepsilon\>,L-\<varepsilon\>|]><rsup|d>> for
    <math|0\<less\>\<varepsilon\>\<ll\>L>. Enlarging the size <math|L> so
    that <math|<wide|f|~><rsub|n,L>> becomes very close to <math|f<rsub|n>>.
    Finally, we have the relations <math|<wide|f|~><rsub|n,L><above|\<longrightarrow\>|L\<rightarrow\>\<infty\>>f<rsub|n><above|\<longrightarrow\>|n\<rightarrow\>\<infty\>>f>.
    The smooth compact-supported function <math|<wide|f|~><rsub|n,L>> is what
    we want.
  </proof>

  It indicates that a tempered distribution looks like a smooth
  compact-supported function in the sense of acting to
  <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>.

  <\corollary>
    Rapid decreasing functions are dense in the space of tempered
    distributions.
  </corollary>

  <\proof>
    We already find <math|C<rsub|c><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|d>|)>\<subset\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>\<subset\>\<cal-S\><rprime|'><around*|(|\<bbb-R\><rsup|d>|)>>,
    and <math|C<rsub|c><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|d>|)>> is
    dense in <math|\<cal-S\><rprime|'><around*|(|\<bbb-R\><rsup|d>|)>>. So
    naturally, <math|\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>> is dense in
    <math|\<cal-S\><rprime|'><around*|(|\<bbb-R\><rsup|d>|)>>.
  </proof>

  A surprising fact is that a continuous linear operator is also a tempered
  distribution, thus closes to some smooth compact-supported function.

  <\lemma>
    [Kernel] For any continuous linear operator
    <math|K:\<cal-S\><around*|(|\<bbb-R\><rsup|m>|)>\<rightarrow\>\<cal-S\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>>,
    there is a tempered distribution <math|k\<in\>\<cal-S\><rprime|'><around*|(|\<bbb-R\><rsup|m>\<times\>\<bbb-R\><rsup|n>|)>>
    such that

    <\equation*>
      \<langle\>K\<varphi\>,\<psi\>\<rangle\>=\<langle\>k,\<varphi\>\<otimes\>\<psi\>\<rangle\>
    </equation*>

    holds for any <math|\<varphi\>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|m>|)>>
    and <math|\<psi\>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|n>|)>>.
  </lemma>

  <\proof>
    [Sketch] TODO
  </proof>

  Because <math|C<rsub|c><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|d>|)>> is
  dense in <math|\<cal-S\><rprime|'><around*|(|\<bbb-R\><rsup|d>|)>>, we
  directly get the following result.

  <\theorem>
    <label|theorem:kernel-approx>[Kernel Approximation] For any continuous
    linear operator <math|K:\<cal-S\><around*|(|\<bbb-R\><rsup|m>|)>\<rightarrow\>\<cal-S\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>>,
    and any <math|\<varepsilon\>\<gtr\>0>, there is a smooth
    compact-supported <math|k\<in\>C<rsub|c><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|m>\<times\>\<bbb-R\><rsup|n>|)>>
    such that

    <\equation*>
      <around*|\||\<langle\>K\<varphi\>,\<psi\>\<rangle\>-\<langle\>k,\<varphi\>\<otimes\>\<psi\>\<rangle\>|\|>\<less\>\<varepsilon\>
    </equation*>

    holds for any <math|\<varphi\>,\<psi\>\<in\>\<cal-S\><around*|(|\<bbb-R\><rsup|d>|)>>.
  </theorem>

  Now, <math|k> becomes a function, and the application can be written as a
  normal integral

  <\equation*>
    \<langle\>k,\<varphi\>\<otimes\>\<psi\>\<rangle\>=<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>x<big|int><rsub|\<bbb-R\><rsup|d>>\<mathd\>y
    k<around*|(|x,y|)>\<varphi\><around*|(|x|)>\<psi\><around*|(|y|)>.
  </equation*>

  Now, the reason why <math|k> is usually called a kernel is manifest.

  <\theorem>
    <label|theorem:pws>[PWS Theorem] The Fourier transform of a
    compact-supported function is entire.
  </theorem>

  <\proof>
    TODO.
  </proof>

  In fact, there is another part of PWS theorem, claiming the reverse that
  the Fourier transform of a entire function is compact-supported. But for
  our purpose, this will not help.
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
    <associate|auto-1|<tuple|1|3>>
    <associate|auto-10|<tuple|8|10>>
    <associate|auto-11|<tuple|9|11>>
    <associate|auto-12|<tuple|10|12>>
    <associate|auto-13|<tuple|11|13>>
    <associate|auto-2|<tuple|1.1|3>>
    <associate|auto-3|<tuple|1.2|3>>
    <associate|auto-4|<tuple|2|3>>
    <associate|auto-5|<tuple|3|4>>
    <associate|auto-6|<tuple|3.1|5>>
    <associate|auto-7|<tuple|3.2|7>>
    <associate|auto-8|<tuple|3.3|7>>
    <associate|auto-9|<tuple|3.4|9>>
    <associate|axiom:dense|<tuple|2|?>>
    <associate|axiom:local|<tuple|5|10>>
    <associate|axiom:prob|<tuple|1|3>>
    <associate|axiom:sup|<tuple|4|5>>
    <associate|axiom:time-evol|<tuple|3|?>>
    <associate|eq:action|<tuple|10|9>>
    <associate|eq:hamiltonian|<tuple|7|8>>
    <associate|eq:moment|<tuple|11|9>>
    <associate|eq:momentexpansion|<tuple|13|10>>
    <associate|eq:pathint|<tuple|8|9>>
    <associate|eq:probtoself|<tuple|2|7>>
    <associate|eq:r-fourier|<tuple|4|8>>
    <associate|eq:r-fourier-alt|<tuple|5|8>>
    <associate|eq:transexp|<tuple|12|10>>
    <associate|equ:superposition|<tuple|1|6>>
    <associate|footnote-1|<tuple|1|4>>
    <associate|footnote-2|<tuple|2|5>>
    <associate|footnote-3|<tuple|3|6>>
    <associate|footnote-4|<tuple|4|6>>
    <associate|footnote-5|<tuple|5|8>>
    <associate|footnote-6|<tuple|6|8>>
    <associate|footnote-7|<tuple|7|10>>
    <associate|footnote-8|<tuple|8|10>>
    <associate|footnote-9|<tuple|9|11>>
    <associate|footnr-1|<tuple|1|4>>
    <associate|footnr-2|<tuple|2|5>>
    <associate|footnr-3|<tuple|3|6>>
    <associate|footnr-4|<tuple|4|6>>
    <associate|footnr-5|<tuple|5|8>>
    <associate|footnr-6|<tuple|6|8>>
    <associate|footnr-7|<tuple|7|10>>
    <associate|footnr-8|<tuple|8|10>>
    <associate|footnr-9|<tuple|9|11>>
    <associate|section:Expanding Kernel as Generalized Function|<tuple|7|9>>
    <associate|section:Hermitianity on Moments|<tuple|9|11>>
    <associate|section:Locality Truncates the Moments|<tuple|8|10>>
    <associate|section:Path Integral Formalism|<tuple|6|7>>
    <associate|theorem:cs-dense-l2|<tuple|12|?>>
    <associate|theorem:kernel-approx|<tuple|23|?>>
    <associate|theorem:pws|<tuple|24|?>>
    <associate|theorem:schwartz-dense-l2|<tuple|15|?>>
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

      2<space|2spc>Wavefunction Represents the State of Quantum System
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>

      3<space|2spc>Wavefunction Is Rapidly Decreasing
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>

      4<space|2spc>Superposition Principle and Time Evolution
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>

      5<space|2spc>Hermitianity Bridges the Arguments of Kernel
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>

      6<space|2spc>Path Integral Formalism
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>

      7<space|2spc>From Integral to Differential
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>

      8<space|2spc>Locality Truncates the Moments
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>

      9<space|2spc>Hermitianity on the Moments
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>

      10<space|2spc>Galilean Symmetry Fixes
      <with|mode|<quote|math>|N<rsub|cut>=2>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>

      11<space|2spc>Back to Classical World
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>
    </associate>
  </collection>
</auxiliary>