\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.285
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In nomine Jesu... Ps. Gloriabuntur" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In nomine Jesu... Ps. Gloriabuntur"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In nomine Jesu... Ps. Gloriabuntur" }
    \line {}
  }
}

chantText = \lyricmode {
In nó -- mi -- ne Je -- su 
\set stanza = " * " o -- mne ge -- nu fle -- ctá -- _ tur, 
cœ -- lé -- sti -- um, ter -- ré -- stri -- um et in -- fer -- nó -- rum: 
et o -- mnis lin -- gua con -- fi -- te -- á -- tur, 
qui -- a Dó -- mi -- nus Je -- sus Chri -- stus 
in glo -- ri -- a est De -- i Pa -- _ _ tris. Ps. 
Glo -- ri -- a -- bún -- tur in te o -- mnes qui dí -- li -- gunt no -- men tu -- um: 
\set stanza = " * " 
quó -- ni -- am tu be -- ne -- dí -- ces ju -- sto. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( \once \tweak #'font-size #-4 c' ) f'4 g'4 ( bes'4) bes'4 a'4 ( bes'4) bes'4 \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 bes'4 bes'4 ( bes'4 bes'4) g'4 ( a'4 f'4) g'4 ( a'\prall bes'4) c''4 ( bes'4 bes'4) bes'4 ( a'4) \divisioMaior
 g'4 ( f'4) g'4 ( a'4) g'4 g'4 \divisioMinima
 g'4 ( bes'4 a'4) bes'4 ( a'4 bes'4 g'4) g'4 ( f'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 f'4 g'4 ( bes'4) bes'4 ( bes'4 bes'4) a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaxima
 a'4 c''4 d''4 c''4 bes'4 g'4 ( f'4) g'4 bes'4 a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaior
 f'4 ( g'4) g'4 bes'4 g'4 f'4 f'4 f'4 g'4 ( f'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'\prall bes'4) f'4 g'4 f'4 \divisioMinima
 d'4 ( ees'4 g'4) g'4 f'4 ( ees'4) g'4 ( f'4 ees'4) f'4 ( ees'4 d'4) d'4 \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
r2 d'2*4/2 ~ d'2 ~ d'4 \divisioMinima
f'2*4/2 ees'2*3/2 d'2*3/2 g'2*3/2 f'2*3/2 ~ f'2 ~ \divisioMaior
f'2 d'2*3/2 ~ d'4 ~ \divisioMinima
d'2*3/2 ~ d'2*4/2 ~ d'2*6/2 ~ d'2 ~ \divisioMinima
d'2*3/2 f'2*3/2 ~ f'2*4/2 ~ f'2 \divisioMaxima
r4 ees'2*4/2 d'2*4/2 ees'2*4/2 f'2 \divisioMaior
c'2*3/2 bes2*3/2 a2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ \divisioMaior
d'2 ~ d'2*6/2 ~ \divisioMinima
d'2*4/2 c'2*5/2 ~ c'2*3/2 d'4 \finalis
r4 d'2*3/2 ees'2*4/2 \divisioMinima
f'2*3/2 g'2*3/2 ~ g'2 ees'2 f'2*3/2 \divisioMaxima
d'2*4/2 ees'2*3/2 f'2*3/2 d'2*3/2 ~ d'2 ~ d'4 f'4 ~ f'2*3/2 g'2*3/2 f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 ees'2 f'2*3/2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 ees'2*3/2 ~ \divisioMinima
ees'4 ~ ees'2 ~ ees'2 f'2*3/2 ~ \divisioMaxima
f'2*4/2 ~ f'2*4/2 ~ f'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2*3/2 c'2 bes4 ~ \divisioMinima
bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 c'2 ~ \divisioMaior
c'2 ~ c'2*3/2 bes4 \divisioMinima
d'2*3/2 c'2*4/2 a2*6/2 bes2 ~ \divisioMinima
bes2*3/2 ~ bes2*3/2 c'2*4/2 d'2 \divisioMaxima
r4 g2*4/2 ~ g2*4/2 ~ g2*4/2 f2 ~ \divisioMaior
f2*3/2 ~ f2*3/2 ~ f2 a2*3/2 f2*3/2 g2 \divisioMaior
a2 bes2*6/2 \divisioMinima
f2*4/2 g2*5/2 bes2*3/2 f4 \finalis
r2*4/2 c'2*4/2 \divisioMinima
d'2*3/2 ees'2*3/2 ~ ees'2 ~ ees'2 d'2*3/2 \divisioMaxima
f2*4/2 ~ f2*3/2 ~ f2*3/2 a2*3/2 c'2 bes4 r4 d'2*3/2 ees'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 ~ ees'2 d'2*3/2 \divisioMaxima
c'2*4/2 bes2*4/2 g2*3/2 ~ \divisioMinima
g4 ~ g2 bes2 ~ bes2*3/2 \divisioMaxima
c'2*4/2 bes2*4/2 c'2*3/2 bes2*3/2 c'2 bes4 \finalis
}

bassMusic = {
r2*3/2 a2*3/2 g2 ~ g4 ~ \divisioMinima
g2*4/2 ~ g2*3/2 ~ g2*3/2 ees2*3/2 d2*3/2 ~ d2 ~ \divisioMaior
d2 g2*3/2 ~ g4 ~ \divisioMinima
g2*3/2 ~ g2*4/2 ~ g2*6/2 ~ g2 ~ \divisioMinima
g2*3/2 d2*3/2 ~ d2*4/2 ~ d2 \divisioMaxima
r4 c2*4/2 bes,2*4/2 c2*4/2 d2 ~ \divisioMaior
d2*3/2 ~ d2*3/2 ~ d2 ~ d2*3/2 ~ d2*3/2 bes,2 ~ \divisioMaior
bes,2 ~ bes,2*6/2 ~ \divisioMinima
bes,2*4/2 ~ bes,2*5/2 ~ bes,2*3/2 ~ bes,4 \finalis
bes4 ~ bes2*3/2 ~ bes2*4/2 ~ \divisioMinima
bes2*3/2 ees'2*3/2 d'2 c'2 bes2*3/2 \divisioMaxima
bes,2*4/2 c2*3/2 d2*3/2 ~ d2*3/2 g2 ~ g4 r2*10/2 \divisioMinima
d'2 ~ d'2*3/2 c'2 bes2*3/2 \divisioMaxima
g2*4/2 ~ g2*4/2 ees2*3/2 ~ \divisioMinima
ees4 c2 ~ c2 d2*3/2 ~ \divisioMaxima
d2*4/2 ~ d2*4/2 f2*3/2 g2*3/2 ~ g2 ~ g4 \finalis
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