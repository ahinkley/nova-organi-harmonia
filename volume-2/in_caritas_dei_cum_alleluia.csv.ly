\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.98
%(volume.page)

global = {
 \key a \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Caritas Dei cum Alleluia" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Caritas Dei cum Alleluia"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Caritas Dei cum Alleluia" }
    \line {}
  }
}

chantText = \lyricmode {
Ca -- ri -- tas De -- i 
\set stanza = " * " dif -- fú -- _ _ sa est 
in cór -- di -- bus no -- stris, al -- le -- lú -- ia: 
per in -- ha -- bi -- tán -- _ _ _ tem Spí -- ri -- tum e -- jus in no -- _ bis, 
al -- le -- _ lú -- ia, al -- le -- _ _ lú -- ia. Ps. 
Bé -- ne -- dic á -- ni -- ma me -- a Dó -- mi -- no: 
\set stanza = " * " 
et ó -- mni -- a quæ in -- tra me sunt, nó -- mi -- ni san -- cto e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 ( c''4) c''4 c''4 c''4 a'4 ( b'4 a'4) \divisioMinima
 g'4 g'4 ( a'4) b'4 ( a'4) b'4 ( c''4) g'4 ( a'4 g'4 f'4 e'4 f'4) f'4 ( e'4) \divisioMaior \forceBreak

 f'4 e'4 ( f'4 a'4) a'4 a'4 a'4 ( g'4 a'4 f'4) d'4 ( e'\prall f'4) \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( e'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima
 e'4 ( g'4 f'4) f'4 ( f'4 \forceBreak
) e'4 ( f'4) g'4 g'4 a'4 ( c''4 a'4) f'4 ( a'4 f'4) g'4 ( a'4) g'4 \divisioMinima
 a'4 ( a'4 g'4) a'4 ( g'4) f'4 e'4 ( f'4 \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 f'4 e'4 ( f'4 g'4 f'4 e'4 \forceBreak
) f'4 ( e'4 d'4) e'4 ( d'4) \divisioMaior
 f'4 f'4 ( a'4) c''4 ( a'4) g'4 ( a'4 g'4) e'4 \divisioMinima
 g'4  g'4. a'4 ( bes'4 g'4 f'4) a'4 ( g'4 f'4) g'4 e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis \forceBreak

 g'4 a'4 ( c''4) c''4 c''4 c''4 c''4 d''4 c''4 c''4 b'4 ( a'4) c''4 ( c''4 c''4) \divisioMaxima
 b'4 ( g'4) a'4 ( c''4) c''4 c''4 c''4 \forceBreak
 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 c''4 ( c''4 b'4) a'4 ( \once \tweak #'font-size #-4 g' ) a'4 b'4 g'4 ( a'4) \finalis
  g'4 a'4 ( c''4) c''4 c''4 c''4 c''4 \forceBreak
 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 d''4 c''4 c''4 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( c''4 c''4) \divisioMaxima
 b'4 ( g'4) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima \forceBreak

 c''4 d''4 c''4 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( c''4 c''4) \divisioMaxima
 b'4 ( g'4) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 ( c''4 b'4) a'4 ( g'4) a'4 b'4 g'4 ( a'4) \finalis

}

altoMusic = {
g'2*4/2 ~ g'4 e'2 ~ e'2 ~ e'2 ~ e'2*4/2 c'2*6/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2 ~ c'2 a2*3/2 \divisioMinima
c'2 ~ c'2 ~ c'2*4/2 ~ c'2 ~ \divisioMaxima
c'2*3/2 d'2 r2*4/2 f'2*3/2 ~ f'2 ~ f'4 r2*3/2 \divisioMinima
c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2 ~ c'2*3/2 a2*3/2 ~ a2 ~ \divisioMaior
a4 c'2*4/2 ~ c'2*3/2 ~ c'4 ~ \divisioMinima
c'4 d'2*3/4 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 ~ d'2 c'2 \finalis
e'4 ~ e'2*3/2 ~ e'2*3/2 a'2 g'4 ~ g'2 e'2*3/2 \divisioMaxima
d'2 c'2*3/2 e'2*4/2 ~ e'2 \divisioMinima
f'2 g'2*3/2 e'2*4/2 ~ e'2 ~ e'4 ~ e'2*3/2 f'2*3/2 g'2*3/2 ~ \divisioMinima
g'2 a'2*3/2 g'2 e'2*3/2 \divisioMaxima
d'2 c'2 e'2*4/2 ~ e'2*3/2 ~ \divisioMinima
e'4 d'2 f'2 e'2*3/2 ~ \divisioMaxima
e'2 ~ e'2 ~ e'2*3/2 g'4 f'2*3/2 e'2 d'2 ~ d'4 c'4 \finalis
}

tenorMusic = {
c'2*4/2 d'4 ~ d'2 c'4 ~ \divisioMinima
c'4 b2 g2*4/2 a2*6/2 g2*3/2 ~ g2*3/2 f2 e2 c2 f2*3/2 \divisioMinima
d2 e2 f2 g2 a2 ~ \divisioMaxima
a2*3/2 ~ a2 c'2 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 \divisioMinima
f2*3/2 ~ f2*3/2 g2*3/2 e4 ~ \divisioMinima
e4 g2*5/2 ~ g2*3/2 f2*3/2 ~ f2*4/2 e2*3/2 g2 ~ g2*3/4 ~ g2*4/2 f2*4/2 g2 a2 ~ a2 \finalis
r4 c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'4 d'2 c'2*3/2 \divisioMaxima
e2 ~ e2*3/2 a2*4/2 ~ a2 ~ \divisioMinima
a2 g2*3/2 b2*3/2 d'4 ~ d'4 c'4 ~ c'4 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2 a2*3/2 d'2 c'2*3/2 \divisioMaxima
e2 ~ e2 a2*4/2 ~ a2*4/2 ~ a2 ~ a2 ~ a2*3/2 \divisioMaxima
d'2 c'2 a2*4/2 ~ a2*3/2 b2 g4 e4 ~ e2 \finalis
}

bassMusic = {
e2*4/2 ~ e4 a2 ~ a4 ~ \divisioMinima
a4 e2 ~ e2*4/2 a,2*6/2 c2 ~ \divisioMaior
c4 a,2*3/2 ~ a,2 ~ a,2 ~ a,2 d2*3/2 \divisioMinima
c2 ~ c2 a,2*4/2 ~ a,2 \divisioMaxima
d2*3/2 ~ d2 ~ d2 e2 f2*3/2 d2*3/2 e2*3/2 ~ \divisioMinima
e2*3/2 d2*3/2 c2*3/2 ~ c4 ~ \divisioMinima
c4 ~ c2 a,2*3/2 d2*3/2 ~ d2 ~ \divisioMaior
d4 a,2*4/2 c2*3/2 ~ c4 ~ \divisioMinima
c4 bes,2*3/4 g,2*4/2 d2*4/2 ~ d2 ~ d2 a,2 \finalis
r2*4/2 a2*3/2 f2 e4 ~ e2 a2*3/2 \divisioMaxima
a,2 ~ a,2*3/2 ~ a,2*4/2 c2 \divisioMinima
d2 e2*3/2 ~ e2*3/2 ~ e4 a2 r4 b2*3/2 a2*3/2 e2*3/2 ~ \divisioMinima
e2 f2*3/2 g2 a2*3/2 \divisioMaxima
a,2 ~ a,2 ~ a,2*4/2 c2*3/2 ~ \divisioMinima
c4 f2 d2 a2*3/2 ~ \divisioMaxima
a2 ~ a2 ~ a2*4/2 d2*3/2 e2 ~ e4 ~ e4 a,2 \finalis
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
        "III"
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
