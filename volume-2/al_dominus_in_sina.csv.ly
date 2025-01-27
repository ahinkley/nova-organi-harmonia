\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.68
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dominus in Sina" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dominus in Sina"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dominus in Sina" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- _ ia. _ 
\set stanza = " * " 
_ _ _ _ _ _ ℣. 
Dó -- _ mi -- nus in Si -- na in san -- _ _ _ cto, 
a -- scén -- dens in al -- _ _ _ _ tum, 
ca -- ptí -- vam du -- _ _ _ _ _ _ _ _ _ _ _ xit 
\set stanza = " * " 
ca -- pti -- vi -- tá -- _ tem. _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 ( g'4 a'4) a'4 ( g'4) a'4 ( b'\prall c''4 b'4) a'4 ( c''4) ~ c''4 ( c''4) c''4 ( d''4 c''4 a'4) ~ a'4 ( g'4) \divisioMaior
 b'4 ( c''4.) g'4 ( a'4 g'4 f'4.) a'4 ( b'\prall c''4) ~ c''4 ( b'4. \forceBreak
) g'4 ( c''4 a'4) b'4 ( a'4) ~ a'4 ( g'4) \finalis
 c''4. b'4 ( d''4 c''4) c''4 c''4 c''4 c''4 c''4 ( b'4) \divisioMinima
 b'4 b'4 ( c''4 d''4) ~ d''4 ( c''4 a'4) c''4 ( a'4) b'4 ( c''4) b'4 \divisioMaior \forceBreak

 b'4 ( a'4) c''4 ( e''4 d''4) c''4 b'4 ( c''4) a'4 ( g'4) c''4 ( c''4 b'4 g'4.)  a'4 ( bes'4 a'4 f'4.) g'4 ( bes'4 a'4 g'4) a'4 ( g'4) g'4 \divisioMaxima
 g'4 a'4 ( g'4 c''4) c''4 \forceBreak
 c''4 ( a'4 c''4 b'4 g'4.) a'4 ( c''4 a'4 f'4.)  bes'4 ( a'4 g'4 a'4) c''4 ( c''4 c''4) d''4 ( e''4 c''4 a'4) \divisioMinima
 bes'4 ( d''4 bes'4) d''4 ( c''4 bes'4) c''4 ( g'4.)  a'4 ( g'4) bes'4 ( g'4. \forceBreak
) bes'4 ( a'4 g'4) a'4 ( f'4) f'4 \divisioMaior
 a'4 ( f'4) g'4 ( a'4) a'4 c''4 ( b'4) c''4 ( a'4 c''4) b'4 ( c''4 a'4 g'4) \divisioMinima
 f'4 ( a'4) c''4 ( a'4 g'4.) f'4 ( a'4 b'\prall c''4 b'4 \forceBreak
) c''4 ( b'4 a'4 b'4.) g'4 ( b'4 a'4) b'4 ( g'4 f'4) g'4 ( a'4 g'4) \divisioMinima
  c''4 ( c''4 a'4 g'4) a'4 ( bes'4 g'4 f'4.)  c''4 ( c''4 a'4 g'4) a'4 ( b'4 a'4) ~ a'4 ( g'4) \finalis

}

altoMusic = {
c'2*3/2 d'2 e'2*4/2 f'2 g'2 ~ g'2*3/2 d'2 ~ d'4 \divisioMaior
c'2*5/4 e'2*3/2 f'2*3/4 ~ f'2 g'2*7/4 e'2 ~ e'2 d'2 ~ d'4 \finalis
g'2*13/4 a'2 g'2 ~ \divisioMinima
g'4 ~ g'2 a'2*4/2 ~ a'2 ~ a'2 g'4 \divisioMaior
f'2 g'2*6/2 e'2 ~ e'2*3/2 ~ e'2*3/4 ~ e'2*3/2 f'2*3/4 ~ f'2*4/2 ~ f'2 e'4 ~ \divisioMaxima
e'4 ~ e'2*3/2 ~ e'4 f'2 c'2*7/4 ~ c'2*3/2 ~ c'2*3/4 f'2*4/2 ~ f'2*3/2 e'2*4/2 ~ \divisioMinima
e'2*3/2 ~ e'2*3/2 c'2*5/4 ~ c'2 bes2*5/4 d'2*3/2 c'2 ~ c'4 \divisioMaior
f'2*5/2 e'2 ~ e'2*3/2 ~ e'2*4/2 \divisioMinima
f'2*4/2 r2*3/4 f'2*3/2 e'2 g'2*9/4 ~ g'2*3/2 e'2*3/2 d'2*3/2 e'2 f'2 d'2*3/2 c'2*3/4 f'2*4/2 ~ f'2 d'2 ~ d'4 \finalis
}

tenorMusic = {
r2*3/2 b2 c'2*4/2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ c'2 b4 \divisioMaior
g2*5/4 a2*3/2 ~ a2*3/4 c'2 d'2*7/4 c'2 ~ c'2 ~ c'2 b4 \finalis
e'2*13/4 f'2 g'2 ~ \divisioMinima
g'4 e'2 ~ e'2*4/2 ~ e'2 d'2 ~ d'4 \divisioMaior
c'2 ~ c'2*6/2 b2 a2*3/2 b2*3/4 c'2*3/2 ~ c'2*3/4 d'2*4/2 ~ d'2 c'4 ~ \divisioMaxima
c'4 b2*3/2 a4 ~ a2 g2*7/4 f2*3/2 ~ f2*3/4 ~ f2*4/2 a2*3/2 ~ a2*4/2 ~ \divisioMinima
a2*3/2 g2*3/2 ~ g2*5/4 f2 ~ f2*5/4 ~ f2*3/2 bes2 a4 ~ \divisioMaior
a2*5/2 ~ a2 b2*3/2 c'2*4/2 ~ \divisioMinima
c'2*4/2 ~ c'2*3/4 ~ c'2*5/2 d'2*9/4 ~ d'2*3/2 c'2*3/2 b2*3/2 r2 c'2 bes2*3/2 a2*3/4 ~ a2*4/2 c'2 ~ c'2 b4 \finalis
}

bassMusic = {
a2*3/2 ~ a2 ~ a2*4/2 f2 ~ f2 e2*3/2 g2 ~ g4 \divisioMaior
e2*5/4 c2*3/2 d2*3/4 ~ d2 e2*7/4 a2 f2 g2 ~ g4 \finalis
r2*21/4 \divisioMinima
r2*3/2 a2*4/2 g2 ~ g2 ~ g4 \divisioMaior
d2 e2*6/2 ~ e2 a2*3/2 ~ a2*3/4 ~ a2*3/2 ~ a2*3/4 bes2*4/2 c'2 a4 \divisioMaxima
c4 ~ c2*3/2 ~ c4 d2 e2*7/4 f2*3/2 e2*3/4 d2*4/2 ~ d2*3/2 c2*4/2 \divisioMinima
e2*3/2 ~ e2*3/2 ~ e2*5/4 ~ e2 d2*5/4 bes,2*3/2 f2 ~ f4 \divisioMaior
d2*5/2 c2 ~ c2*3/2 ~ c2*4/2 \divisioMinima
d2*4/2 e2*3/4 a2*5/2 g2*9/4 e2*3/2 a2*3/2 ~ a2*3/2 ~ a2 ~ a2 ~ a2*3/2 ~ a2*3/4 d2*4/2 ~ d2 g2 ~ g4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
        "VIII"
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
