\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.28
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

\header {
  title = \markup \center-column {"Ite IV." \vspace #1 }
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

chantTextA = \lyricmode {
I -- te, _ _ _ _ mis -- sa est. }
chantTextB = \lyricmode {
De -- o, _ _ _ _ grá -- ti -- as. }

chantMusic = {
\tieDown   a'4 a'4 ( g'4 a'4) c''4 ( b'4 a'4 g'4 a'4) \divisioMinima
 a'4 ( g'4 f'4 d'4 e'4) \divisioMinima
 e'4 ( g'4 a'4 d'4.) e'4 ( g'4 f'4 e'4) f'4 d'4 d'4 \finalis

}

altoMusic = {
c'4 ~ c'2*3/2 ~ c'2 b2 c'4 ~ \divisioMinima
c'2 ~ c'2*3/2 \divisioMinima
a2 ~ a2*5/4 c'2 ~ c'2 a2 ~ a4 \finalis
}

tenorMusic = {
e4 f2*3/2 e2*4/2 ~ e4 \divisioMinima
f2 g2*3/2 ~ \divisioMinima
g2 f2*5/4 a2 g2 ~ g2 f4 \finalis
}

bassMusic = {
a,4 ~ a,2*3/2 ~ a,2*4/2 ~ a,4 ~ \divisioMinima
a,2 c2*3/2 \divisioMinima
d2 ~ d2*5/4 a,2 ~ a,2 d2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "I"
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
      \chantTextA
    }
    \new Lyrics \lyricsto chant {
      \chantTextB
    }
  >>
  \layout{
  }
  \midi{
    \tempo 4 = 125
  }
}
