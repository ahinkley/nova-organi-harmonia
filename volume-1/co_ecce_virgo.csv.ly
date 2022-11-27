\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.43
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ecce virgo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ecce virgo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ecce virgo" }
    \line {}
  }
}

chantText = \lyricmode {
Ec -- ce vir -- go 
\set stanza = " * " con -- cí -- pi -- et, _ 
et pá -- _ _ ri -- et fí -- li -- um: 
et vo -- cá -- bi -- tur _ no -- men e -- jus Em -- _ má -- nu -- el. }

chantMusic = {
\tieDown   d'4 d'4 ( f'4 e'4) f'4 ( g'4) d'4 \divisioMinima
 c'4 ( e'4) g'4 ( a'4) g'4 ( f'4) f'4. e'4 ( f'4 d'4) \divisioMaior
 d'4 ( e'4) g'4 ( a'4) c''4 ( c''4) d''4 ( a'4) g'4 ( a'4) a'4 a'4 a'4 ( b'\prall c''4 a'4) a'4 \divisioMaxima \forceBreak

 a'4 ( g'4) c''4 ( c''4) a'4 ( g'4)  bes'4 ( a'4 bes'4) g'4 ( a'4) bes'4 ( a'4) \divisioMinima
 f'4 ( e'4) f'4  g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( g'4) \divisioMinima
 f'4 ( g'4 e'4) ~ e'4 ( d'4) d'4 ( e'\prall f'4 g'4 a'4) f'4 ( e'4 d'4) d'4 \finalis

}

altoMusic = {
r4 d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
c'2 ~ c'2*4/2 ~ c'2*3/4 ~ c'2 r4 \divisioMaior
d'4 e'4 ~ e'2 g'2 f'2*5/2 ~ f'4 e'2*4/2 ~ e'4 \divisioMaxima
c'2 ~ c'2 d'2 ~ d'2*5/2 f'2 \divisioMinima
c'2*3/2 bes2*5/2 c'2 ~ \divisioMinima
c'2 ~ c'2*3/2 a'2 c'2*3/2 ~ c'2*3/2 a'4 \finalis
}

tenorMusic = {
r4 a2*3/2 e2 f4 \divisioMinima
c'2 g2*4/2 a2*3/4 g2 f4 \divisioMaior
a2*4/2 ~ a2 d'2*5/2 ~ d'4 ~ d'2*4/2 c'4 \divisioMaxima
e2 f2 ~ f2 g2*5/2 f2 ~ \divisioMinima
f2*3/2 ~ f2*5/2 e2 \divisioMinima
a2 g2*3/2 f2 ~ f2*3/2 g2*3/2 f4 \finalis
}

bassMusic = {
r4 d2*3/2 ~ d2 ~ d4 \divisioMinima
e2 ~ e2*4/2 d2*3/4 ~ d2 ~ d4 \divisioMaior
r2*4/2 d2 ~ d2*5/2 a4 ~ a2*4/2 ~ a4 \divisioMaxima
c2 a,2 bes,2 ~ bes,2*5/2 d2 \divisioMinima
a,2*3/2 g,2*5/2 c2 \divisioMinima
d2 ~ d2*3/2 ~ d2 a,2*3/2 ~ a,2*3/2 d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
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
      \chantText
    }
  >>
  \layout{
  }
  \midi{
    \tempo 4 = 125
  }
}
