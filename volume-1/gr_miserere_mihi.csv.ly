\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.241
%(volume.page)

global = {
 \key b \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Miserere mihi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Miserere mihi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Miserere mihi" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- se -- ré -- re mi -- hi, _ 
\set stanza = " * " Dó -- mi -- ne, _ _ 
quó -- _ ni -- am in -- fír -- mus sum: 
sa -- na me, _ _ Dó -- mi -- ne. _ _ _ _ _ ℣. 
Con -- tur -- bá -- ta _ _ _ _ _ _ _ _ _ _ _ _ 
_ _ _ _ _ sunt 
ó -- mni -- a os -- sa me -- _ _ a: _ _ _ _ 
et á -- ni -- ma me -- a _ _ _ 
tur -- bá -- ta est 
\set stanza = " * " val -- de _ _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 a4 ( d'4) d'4 d'4 ( c'4 d'4) d'4 b4. c'4 ( d'4 a4) d'4. \divisioMinima
 d'4 d'4 ( c'4)  c'4 ( d'4 e'4) f'4 ( e'4) ~ e'4 ( d'4) \divisioMaior \forceBreak

 d'4 ( g'4) ~ g'4 ( a'4) g'4 g'4 g'4 ( \once \tweak #'font-size #-4 e' ) fis'4 e'4 ( fis'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaxima
 d'4 ( e'4) e'4 ( d'4) d'4 ( b4 c'4) d'4 ( e'4 c'4) ~ c'4 ( a4 d'4 \forceBreak
) d'4 d'4 ( e'4 d'4) d'4 ( e'4) \divisioMinima
 g'4 ( a'4 g'4 d'4.) e'4. d'4 ( e'4 c'4.) e'4 ( g'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis
  d'4 d'4 ( \once \tweak #'font-size #-4 a'  \forceBreak
) a'4 c''4 ( a'4) ~ a'4 ( g'4) ~ g'4 ( e'4) ~ e'4 ( d'4) e'4 ( c'4 d'4) g'4 ( e'4) ~ e'4 ( d'4) e'4 ( c'4 d'4) \divisioMinima
 g'4 ( g'4) ~ g'4 ( g'4) ~ g'4 ( d'4) e'4 ( g'4 e'4 c'4.) e'4 ( g'4 e'4 c'4 d'4) \divisioMaior \forceBreak

 g'4 ( g'4 a'4) b'4 ( b'4) ~ b'4 ( a'4 g'4 fis'4) a'4 ( b'4 a'4 g'4 fis'4) g'4 ( a'4) a'4 \divisioMaior
 a'4 ( b'4 c''\prall d''4 e''4) d''4 c''4 ( b'4) c''4 ( d''4) a'4 \divisioMinima \forceBreak

 a'4 ( c''4 a'4) c''4 ( c''4 a'4 g'4) a'4 ( b'\prall c''4 b'4) c''4 ( c''4) ~ c''4 ( b'4 a'4) b'4 ( g'4) a'4 ( g'4 fis'4) g'4 ( fis'4) \divisioMaxima
 e'4 g'4 ( g'4) e'4 d'4 \forceBreak
 a'4 ( g'4 a'4) a'4 ( a'4 fis'4) g'4 ( a'4 g'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMaior
 e'4 g'4 ( g'4) e'4 d'4  d'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( d'4) \divisioMinima
 a'4 ( fis'4 a'4) b'4 ( c''4 a'4. \forceBreak
) b'4 ( c''4 b'4 a'4) b'4 ( g'4) a'4 ( a'4 fis'4.) g'4 ( a'4 fis'4) g'4 ( e'4 d'4) e'4 ( c'4 d'4) \divisioMinima
 g'4 ( g'4 e'4 d'4) e'4 ( c'4 a4.) d'4 ( g'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis

}

altoMusic = {
r4 a2 g4 ~ g2*3/2 b4 ~ b2*3/4 g2*3/2 a2*3/4 ~ \divisioMinima
a4 ~ a2 c'2*4/2 a2 ~ a4 \divisioMaior
d'4 ~ d'2*5/2 c'2 ~ c'4 ~ c'2*5/2 a2 \divisioMaxima
b2 a2 g2*5/2 a2*4/2 c'4 a2*3/2 c'2 \divisioMinima
d'2*3/2 ~ d'2*3/4 c'2*3/4 ~ c'2 ~ c'2*3/4 ~ c'2*4/2 a2 ~ a4 r4 d'2 e'2 ~ e'2 ~ e'2 d'2*3/2 r2*10/2 \divisioMinima
e'2 ~ e'2 d'2 c'2*3/2 ~ c'2*3/4 ~ c'2*3/2 ~ c'4 d'4 \divisioMaior
e'2*3/2 ~ e'2 ~ e'2*4/2 d'2*5/2 ~ d'2 ~ d'4 \divisioMaior
e'2*6/2 g'2 ~ g'2 fis'4 \divisioMinima
e'2*3/2 ~ e'2*4/2 d'2*4/2 g'2 e'2*3/2 ~ e'2 d'2*3/2 ~ d'2 \divisioMaxima
b4 c'2 r2 d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 r2*3/2 \divisioMaior
c'4 b2*4/2 d'2 ~ d'2 \divisioMinima
e'2*3/2 ~ e'2*7/4 ~ e'2*4/2 ~ e'2 ~ e'2 ~ e'2*3/4 d'2*3/2 ~ d'2 ~ d'4 a2 ~ a4 \divisioMinima
d'2*3/2 ~ d'4 c'2*7/4 d'2*4/2 a2 ~ a4 \finalis
}

tenorMusic = {
f4 ~ f2 ~ f4 e2*3/2 f2*5/4 e2*3/2 f2*3/4 \divisioMinima
e4 g2 e2*4/2 g2 f4 \divisioMaior
e4 ~ e2*5/2 ~ e2 a4 g2*5/2 ~ g4 f4 \divisioMaxima
g2 f2 r2*5/2 g2*4/2 ~ g4 f2*3/2 g2 ~ \divisioMinima
g2*9/4 ~ g2*3/4 ~ g2*7/4 a2*4/2 g2 f4 d'4 c'2 ~ c'2 ~ c'2 ~ c'2 b2*3/2 ~ b2*4/2 a2*3/2 g2*3/2 \divisioMinima
b2 c'2 g2 ~ g2*9/4 ~ g2*3/2 ~ g4 fis4 \divisioMaior
g2*3/2 ~ g2 a2*4/2 ~ a2*5/2 e2 fis4 \divisioMaior
a2*6/2 g2 a2 ~ a4 ~ \divisioMinima
a2*3/2 g2*4/2 ~ g2*4/2 ~ g2 ~ g2*3/2 a2 ~ a2*3/2 b2 \divisioMaxima
g4 ~ g2 a2 fis2*3/2 g2*3/2 a2*4/2 ~ a2*3/2 \divisioMaior
g4 ~ g2*4/2 ~ g2 fis2 ~ \divisioMinima
fis2*3/2 g2*7/4 a2*4/2 g2 fis2 a2*3/4 e2*3/2 g2*3/2 ~ g2 fis4 \divisioMinima
g2*4/2 ~ g2*7/4 ~ g2*4/2 ~ g2 fis4 \finalis
}

bassMusic = {
r2*7/2 d2*5/4 ~ d2*3/2 ~ d2*3/4 \divisioMinima
a,4 ~ a,2 ~ a,2*4/2 d2 ~ d4 \divisioMaior
b,4 ~ b,2*5/2 a,2 ~ a,4 ~ a,2*5/2 d2 \divisioMaxima
r2*4/2 e2*5/2 ~ e2*4/2 d4 ~ d2*3/2 c2 \divisioMinima
b,2*9/4 ~ b,2*3/4 a,2*7/4 ~ a,2*4/2 d2 ~ d4 r2*5/2 b2 a2 ~ a2*3/2 g2*4/2 fis2*3/2 e2*3/2 \divisioMinima
d2 c2 b,2 c2*9/4 a,2*3/2 d2 \divisioMaior
c2*3/2 a2 c2*4/2 b,2*5/2 d2 ~ d4 \divisioMaior
c2*6/2 e2 d2 ~ d4 \divisioMinima
c2*3/2 a,2*4/2 b,2*4/2 e2 d2*3/2 c2 b,2*3/2 ~ b,2 \divisioMaxima
e4 ~ e2 fis2 d2*3/2 ~ d2*3/2 ~ d2*4/2 fis2*3/2 \divisioMaior
e4 ~ e2*4/2 b,2 ~ b,2 \divisioMinima
c2*3/2 ~ c2*7/4 ~ c2*4/2 ~ c2 ~ c2 ~ c2*3/4 b,2*3/2 ~ b,2*3/2 d2 ~ d4 \divisioMinima
b,2*4/2 a,2*7/4 b,2*4/2 d2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
        "VII"
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