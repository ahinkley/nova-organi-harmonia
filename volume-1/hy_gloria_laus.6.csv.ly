\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.305
%(volume.page)

global = {
 \key a \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page ""
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "" }
    \line {}
  }
}

chantText = \lyricmode {
5 Hi pla -- cu -- é -- re ti -- bi, plá -- ce -- at de -- vó -- ti -- o no -- stra: 
Rex bo -- ne, Rex cle -- mens, cui bo -- na cun -- cta pla -- cent. }

chantMusic = {
\tieDown     a'4 a'4 g'4 a'4 a'4 ( b'\prall c''4) c''4 ( b'4) a'4 ( g'4) \divisioMinima
 g'4 ( a'4) c''4 c''4 ( d''4) c''4 c''4 ( b'4) a'4 g'4 a'4 a'4 \divisioMaxima \forceBreak

 a'4 a'4 g'4 a'4 ( b'\prall c''4) c''4 ( b'4) a'4 ( g'4) \divisioMinima
 g'4 ( a'4) c''4 c''4 ( d''4) c''4 ( \once \tweak #'font-size #-4 b' ) a'4 g'4 ( a'4) a'4 \finalis

}

altoMusic = {
e'4 d'2 ~ d'4 c'2*3/2 d'2 ~ d'2 \divisioMinima
e'2*3/2 g'2*3/2 f'2 e'2 ~ e'2 ~ \divisioMaxima
e'4 d'2 c'2*3/2 d'2 c'2 \divisioMinima
g'2 ~ g'4 f'2 e'2*3/2 d'2 c'4 \finalis
}

tenorMusic = {
e4 ~ e2 ~ e4 ~ e2*3/2 g2 ~ g2 \divisioMinima
c'2*3/2 ~ c'2*3/2 ~ c'2 b2 a2 \divisioMaxima
e4 ~ e2 ~ e2*3/2 f2 e2 \divisioMinima
b2 a4 ~ a2 g2*3/2 d2 e4 \finalis
}

bassMusic = {
c4 b,2 a,4 ~ a,2*3/2 g,2 b,2 \divisioMinima
c2*3/2 e2*3/2 d2 e2 c2 ~ \divisioMaxima
c4 b,2 a,2*3/2 c2 ~ c2 \divisioMinima
e2 ~ e4 f2 c2*3/2 b,2 a,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        ""
        "0"
      }
      \new Staff = up <<
        \new Voice = "chant" {
          \voiceOne \global \chantMusic
        }
        \new Voice {
          \voiceTwo \global \altoMusic
        }
      >>

      \new Staff = down <<
        \clef bass
        \new Voice {
          \voiceOne \global \tenorMusic
        }
        \new Voice {
          \voiceTwo \global \bassMusic
        }
	\new Voice {
        \voiceThree \global \voiceLines
        }
      >>
    >>
    \new Lyrics \lyricsto chant {
      \chantText
    }
  >>
  \layout{
  }
  \midi{
    \tempo 4 = 125
  }
}
