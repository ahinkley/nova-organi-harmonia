\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.191
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedic anima mea" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedic anima mea"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedic anima mea" }
    \line {}
  }
}

chantText = \lyricmode {
Bé -- ne -- dic 
\set stanza = " * " á -- ni -- ma me -- a Dó -- mi -- no, 
et no -- li ob -- _ li -- ví -- sci o -- mnes re -- tri -- bu -- ti -- ó -- nes _ e -- jus: 
et re -- no -- vá -- bi -- tur, sic -- ut á -- _ _ qui -- læ, 
ju -- vén -- _ _ _ _ _ _ _ _ _ tus _ tu -- a. }

chantMusic = {
\tieDown   ees'4 g'4 bes'4 ( bes'4) \divisioMinima
 bes'4 ( c''4 bes'4 c''4) g'4 g'4 ( f'4) g'4 ( bes'4) bes'4 ( bes'4 c''4) c''4 ( d''4 c''4 bes'4) c''4 ( bes'4) bes'4 ( c''4 bes'4) \divisioMaior \forceBreak

 g'4 g'4 ( bes'4 c''4) c''4 ( bes'4) bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) g'4 ( f'4) g'4 bes'4 ( bes'4) \divisioMinima
 bes'4 ( \once \tweak #'font-size #-4 g' )  aes'4 ( g'4) ees'4 f'4 ( g'4) g'4 ( f'4)  g'4 ( a'\prall bes'4 \forceBreak
) bes'4 ( a'4) bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) g'4 ( a'\prall bes'4 a'4 bes'4) a'4 ( g'4) \divisioMaior
 a'4 f'4 g'4 bes'4 bes'4 ( bes'4 bes'4) bes'4 \divisioMinima
 c''4 ( bes'4 g'4 \forceBreak
) bes'4 ( g'4 a'\prall bes'4 a'4) bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) g'4 ( a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 bes'4 ( bes'4) bes'4 ( g'4) bes'4 ( bes'4 g'4) bes'4 ( bes'4 g'4. \forceBreak
) ees'4 ( f'4 g'4) bes'4 ( bes'4) c''4 ( d''4 bes'4 g'4) bes'4 ( a'4 f'4 g'4) \divisioMinima
 g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( g'4) ees'4 ( f'4 ees'4) ees'4 \finalis

}

altoMusic = {
r4 g'2*3/2 \divisioMinima
f'2*4/2 ~ f'4 ees'2 d'2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 ~ \divisioMaior
d'2 ~ d'2 g'2 f'2 ~ f'2*3/2 ~ f'2 ees'4 d'2 \divisioMinima
ees'2 ~ ees'2*4/2 ~ ees'4 d'2 ~ d'2*3/2 ~ d'2 f'2 ~ f'2*3/2 d'2*5/2 ~ d'2 ~ \divisioMaior
d'2*3/2 ~ d'4 ~ d'2*4/2 \divisioMinima
c'2*3/2 f'2*5/2 ees'2 d'2 ~ d'2*3/2 ~ d'2*5/2 ~ d'2 ~ \divisioMaior
d'2 ees'2 d'2*3/2 c'2*7/4 ees'2*3/2 f'2 ~ f'2*4/2 ~ f'2 ~ f'4 d'4 ~ \divisioMinima
d'4 ees'2 d'2 c'2*4/2 f'2 ees'2 bes2*3/2 ~ bes4 \finalis
}

tenorMusic = {
ees'2*4/2 \divisioMinima
d'2*4/2 ~ d'4 c'2 bes2 ~ bes2*3/2 ~ bes2*4/2 a2 g2*3/2 ~ \divisioMaior
g2 ~ g2 ~ g2 ~ g2 c'2*3/2 bes2 ~ bes4 ~ bes2 ~ \divisioMinima
bes2 c'2*5/2 bes2 ~ bes2*3/2 ~ bes2 ~ bes2 c'2*3/2 ~ c'2*5/2 bes2 \divisioMaior
a2*3/2 g4 ~ g2*4/2 ~ \divisioMinima
g2*3/2 ~ g2*5/2 ~ g2 ~ g2 a2*3/2 bes2*5/2 a2 \divisioMaior
g2 ~ g2 ~ g2*3/2 ~ g2*7/4 ~ g2*3/2 f2 bes2*4/2 c'2*3/2 bes4 ~ \divisioMinima
bes4 ~ bes2 g2 ~ g2*4/2 ~ g2 ~ g2 aes2*3/2 g4 \finalis
}

bassMusic = {
r2*4/2 \divisioMinima
r2*9/2 a2*3/2 g2*4/2 ~ g2 ~ g2*3/2 \divisioMaior
r2 f2 ees2 d2 ~ d2*3/2 ~ d2 g4 ~ g2 ~ \divisioMinima
g2 f2*5/2 bes2 a2*3/2 g2 d2 ~ d2*3/2 g2*5/2 ~ g2 ~ \divisioMaior
g2*3/2 ~ g4 f2*4/2 \divisioMinima
ees2*3/2 d2*5/2 c2 g2 ~ g2*3/2 ~ g2*5/2 d2 \divisioMaior
r2*4/2 f2*3/2 ees2*7/4 c2*3/2 d2 ~ d2*4/2 ~ d2*3/2 g4 ~ \divisioMinima
g4 ~ g2 f2 ees2*4/2 d2 c2 ees2*3/2 ~ ees4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
        "V"
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
