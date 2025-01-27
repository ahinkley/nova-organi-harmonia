\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.126
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Adorate Deum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Adorate Deum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Adorate Deum" }
    \line {}
  }
}

chantText = \lyricmode {
Ad -- o -- rá -- te 
\set stanza = " * " De -- um _ _ o -- mnes An -- ge -- _ li e -- jus 
au -- dí -- vit, _ _ et læ -- tá -- ta est Si -- on: 
et ex -- sul -- ta -- vé -- _ runt fí -- li -- æ Ju -- _ _ dæ Ps. 
Dó -- mi -- nus re -- gná -- vit, ex -- súl -- tet ter -- ra: 
\set stanza = " * " 
læ -- tén -- tur ín -- su -- læ mul -- tæ. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 g'4 ( g'4) a'4 g'4  a'4 ( g'4) g'4 ( b'4 a'4) b'4 ( g'4) ~ g'4 ( fis'4) \divisioMinima
 fis'4 ( g'4 \once \tweak #'font-size #-4 a' ) a'4 c''4 ( c''4) d''4 ( c''4) ~ c''4 ( g'4 \forceBreak
) g'4 ( e'4) fis'4 ( \once \tweak #'font-size #-4 g' ) d'4 \divisioMaxima
 e'4 g'4 ( g'4) e'4 g'4 ( fis'4) g'4 ( e'4) ~ e'4 ( d'4) \divisioMinima
 e'4 ( g'4 fis'4) g'4 ( a'4) a'4 ( b'4) g'4 ( e'4) g'4 ( g'4) g'4 ( a'4 g'4 fis'4 \forceBreak
) g'4 \divisioMaxima
 g'4 a'4 g'4 g'4 ( a'4) a'4 ( g'4) ~ g'4 ( fis'4 e'4) g'4 ( g'4) \divisioMinima
 a'4 d'4 d'4 ( e'4 fis'\prall g'4 fis'4) g'4 ( g'4) ~ g'4 ( e'4) g'4 ( g'4 e'4) e'4 ( d'4) \finalis \forceBreak

 d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 ( c''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 ( b'\prall c''4 \forceBreak
) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis
  d'4 g'4 fis'4 g'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 c''4 b'4 b'4 \forceBreak
 b'4 \once \tweak #'font-size #-4 a'  a'4 b'4 \divisioMaxima
 a'4 fis'4 g'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 c''4 b'4 b'4 \once \tweak #'font-size #-4 a'  a'4 b'4 \divisioMaxima \forceBreak

 a'4 fis'4 g'4 a'4 a'4 a'4 a'4 a'4 a'4 b'\prall c''4 a'4 g'4 g'4 g'4 g'4 e'4 d'4 \finalis

}

altoMusic = {
r4 d'2 ~ d'2 e'2 d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'2*4/2 g'2*3/2 ~ g'2 ~ g'4 ~ g'4 e'4 ~ e'2 d'4 \divisioMaxima
b4 ~ b2*3/2 ~ b2*3/2 a2*3/2 \divisioMinima
b2*5/2 ~ b2*4/2 e'2 d'2*4/2 b4 \divisioMaxima
d'4 ~ d'2 ~ d'2*3/2 c'2*4/2 b2 \divisioMinima
d'2 b2*5/2 ~ b2 ~ b2 a2*3/2 ~ a2 \finalis
r2*3/2 g'2*4/2 fis'2*3/2 e'2*3/2 fis'2 ~ fis'2 \divisioMaxima
d'2 ~ d'2*3/2 e'2*3/2 d'2 c'2*3/2 a2 r2*3/2 g'2*6/2 fis'2*3/2 ~ \divisioMinima
fis'2 e'2*4/2 fis'2 ~ fis'2 \divisioMaxima
d'2*8/2 fis'2*4/2 e'2*3/2 fis'2 d'2 ~ \divisioMaxima
d'2*4/2 ~ d'2*4/2 e'2*3/2 d'2 c'2*3/2 a2 \finalis
}

tenorMusic = {
r4 b2 ~ b2 ~ b2 ~ b2*4/2 a2*3/2 ~ \divisioMinima
a2*4/2 ~ a2*3/2 g2*3/2 c'2 b2 ~ b4 ~ \divisioMaxima
b4 ~ b2*3/2 g2*3/2 fis2*3/2 \divisioMinima
g2*3/2 ~ g2 ~ g2*4/2 ~ g2 ~ g2*4/2 ~ g4 \divisioMaxima
r4 d2 e2 g4 ~ g2*4/2 ~ g2 \divisioMinima
r2 g2*5/2 ~ g2 e2 ~ e2*3/2 ~ e4 fis4 \finalis
d'2*7/2 ~ d'2*3/2 e'2*3/2 d'2 ~ d'2 \divisioMaxima
fis2 ~ fis2*3/2 g2*3/2 ~ g2 ~ g2*3/2 ~ g4 fis4 d'2*3/2 ~ d'2*6/2 ~ d'2*3/2 ~ \divisioMinima
d'2 e'2*4/2 d'2 ~ d'2 \divisioMaxima
fis2*8/2 a2*4/2 ~ a2*3/2 ~ a2 g2 \divisioMaxima
b2*4/2 a2*4/2 g2*3/2 ~ g2 ~ g2*3/2 ~ g4 fis4 \finalis
}

bassMusic = {
r4 g2 fis2 e2 b,2*4/2 d2*3/2 \divisioMinima
fis2*4/2 e2*3/2 ~ e2*3/2 ~ e2 g2 ~ g4 \divisioMaxima
fis4 e2*3/2 ~ e2*3/2 ~ e2*3/2 \divisioMinima
g2*3/2 fis2 e2*4/2 c2 b,2*4/2 e4 \divisioMaxima
b,4 ~ b,2 ~ b,2*3/2 a,2*4/2 e2 \divisioMinima
fis2 ~ fis2*5/2 e2 d2 c2*3/2 d2 \finalis
r2*10/2 c'2*3/2 d'2 b2 \divisioMaxima
r2 d2*3/2 c2*3/2 b,2 a,2*3/2 d2 r2*14/2 c'2*4/2 d'2 b2 \divisioMaxima
d2*8/2 ~ d2*4/2 c2*3/2 d2 g2 \divisioMaxima
b,2*4/2 ~ b,2*4/2 c2*3/2 b,2 a,2*3/2 d2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
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
