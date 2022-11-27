\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.142
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Narraverunt" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Narraverunt"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Narraverunt" }
    \line {}
  }
}

chantText = \lyricmode {
Nar -- ra -- vé -- runt 
\set stanza = " * " mi -- hi in -- í -- _ qui fa -- bu -- la -- ti -- ó -- nes, 
sed non ut lex tu -- a: _ 
e -- go au -- tem lo -- qué -- bar de te -- sti -- mó -- ni -- is tu -- _ is 
in con -- spé -- ctu re -- gum, 
et non _ con -- fun -- dé -- bar. 
Al -- le -- lú -- ia, _ _ al -- le -- lú -- ia. Ps. 
Be -- á -- ti im -- ma -- cu -- lá -- ti in -- vi -- a: 
\set stanza = " * " 
qui ám -- bu -- lant in le -- ge Dó -- mi -- ni. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   a'4 ( gis'4) fis'4 ( a'4) a'4 ( b'4 a'4) a'4 ( a'4 a'4)  a'4 ( b'4 a'4) fis'4 fis'4 fis'4 a'4 ( a'4 fis'4) fis'4 \divisioMinima
 fis'4 fis'4 ( e'4 fis'4) a'4 ( fis'4 gis'\prall a'4 b'4) a'4 a'4 ( b'4 a'4 gis'4 a'4) fis'4 \divisioMaior
 fis'4 a'4 ( b'4) b'4 b'4 ( cis''4) b'4 ( a'4) a'4 ( b'4 a'4 a'4) fis'4 ( gis'4 fis'4) \divisioMaxima
 fis'4 fis'4 ( b'4) b'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 a'4 ( cis''4 b'4 cis''4) a'4 \divisioMinima
 a'4 a'4 a'4 b'4 a'4 fis'4 ( gis'\prall a'4) gis'4 ( a'4 b'4) cis''4 ( b'4 gis'4 a'4) a'4 \divisioMaior
 fis'4 ( gis'4) fis'4 ( e'4) fis'4 ( a'4 gis'4) a'4 ( b'4) fis'4 ( gis'4 fis'4 e'4) e'4 \divisioMaior
 a'4 gis'4 ( b'4 a'4) ~ a'4 ( \once \tweak #'font-size #-4 gis' ) e'4 ( fis'4) a'4 ( fis'4 b'4) a'4 ( b'4 a'4 fis'4) fis'4 \divisioMaxima
 e'4 ( fis'4 \once \tweak #'font-size #-4 a' ) a'4 ( gis'4) a'4 ( b'4 a'4) a'4 ( a'4) ~ a'4 ( fis'4) ~ fis'4 ( e'4) \divisioMinima
 fis'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( gis'4 a'4 fis'4) fis'4 ( gis'4 fis'4) fis'4 \finalis
 e'4 fis'4 ( e'4) e'4 ( a'4) a'4 a'4 a'4 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( fis'4) fis'4 ( a'4) a'4 a'4 a'4 b'4 a'4 ( fis'4) a'4 gis'4 ( e'4) fis'4 ( gis'4 fis'4) \finalis
  e'4 fis'4 ( e'4) e'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( fis'4) fis'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( fis'4) fis'4 ( a'4) a'4 a'4 a'4 a'4 b'4 a'4 ( fis'4) a'4 gis'4 ( e'4) fis'4 ( gis'4 fis'4) \finalis

}

altoMusic = {
fis'2 ~ fis'2 ~ fis'2*3/2 e'2*3/2 cis'2*3/2 ~ cis'2*3/2 d'2*3/2 cis'4 ~ \divisioMinima
cis'4 ~ cis'2*3/2 ~ cis'2*5/2 d'4 e'2*5/2 fis'4 \divisioMaior
d'4 ~ d'2*3/2 e'2 cis'2 ~ cis'2*4/2 ~ cis'2 ~ cis'4 ~ \divisioMaxima
cis'4 d'2 e'2*4/2 fis'2*4/2 ~ fis'4 ~ \divisioMinima
fis'4 ~ fis'2 ~ fis'2 ~ fis'2*3/2 ~ fis'2*3/2 e'2 ~ e'2 ~ e'4 \divisioMaior
b2 ~ b2 cis'2*3/2 ~ cis'2 b2*4/2 ~ b4 \divisioMaior
cis'2*3/2 ~ cis'2*3/2 ~ cis'2 ~ cis'2*3/2 d'2*4/2 cis'4 ~ \divisioMaxima
cis'2*3/2 d'2 e'2*3/2 d'2*3/2 cis'2*3/2 ~ \divisioMinima
cis'2 ~ cis'2*4/2 ~ cis'2*3/2 ~ cis'4 \finalis
r4 cis'2 d'2*3/2 e'2 fis'2 ~ fis'2 ~ fis'4 ~ fis'2*3/2 \divisioMaxima
d'2 ~ d'2 e'2*3/2 fis'2 ~ fis'4 e'4 ~ e'2 cis'2*3/2 ~ cis'4 b2 cis'2 d'2*3/2 e'2*3/2 ~ \divisioMinima
e'2 fis'2 ~ fis'2 ~ fis'4 ~ fis'2*3/2 \divisioMaxima
cis'2 ~ cis'2 ~ cis'2*4/2 ~ cis'2*3/2 \divisioMinima
d'2 ~ d'2 ~ d'4 e'2*3/2 \divisioMaxima
d'2 ~ d'2 cis'2*3/2 e'2 ~ e'2*3/2 ~ e'2 cis'2 ~ cis'4 \finalis
}

tenorMusic = {
fis'2 e'2 d'2*3/2 cis'2*3/2 ~ cis'2*3/2 b2*3/2 ~ b2*3/2 a4 ~ \divisioMinima
a4 ~ a2*3/2 ~ a2*5/2 b4 cis'2*5/2 ~ cis'4 \divisioMaior
b4 ~ b2*3/2 a2 ~ a2 ~ a2*4/2 b2 a4 \divisioMaxima
r4 b2 cis'2*4/2 ~ cis'2*4/2 ~ cis'4 \divisioMinima
fis4 ~ fis2 ~ fis2 a2*3/2 fis2*3/2 gis2 b2 a4 ~ \divisioMaior
a2 gis2 fis2*3/2 ~ fis2 gis2*4/2 ~ gis4 ~ \divisioMaior
gis2*3/2 fis2*3/2 gis2 a2*3/2 b2*4/2 a4 \divisioMaxima
r2*3/2 b2 cis'2*3/2 b2*3/2 a2*3/2 ~ \divisioMinima
a2 ~ a2*4/2 b2*3/2 a4 \finalis
r4 a2 b2*3/2 cis'2 d'2 ~ d'2 ~ d'4 cis'2*3/2 \divisioMaxima
b2 a2 ~ a2*3/2 ~ a2*3/2 ~ a4 b2 a2*3/2 ~ a2*3/2 ~ a2 b2*3/2 cis'2*3/2 ~ \divisioMinima
cis'2 d'2 ~ d'2 ~ d'4 cis'2*3/2 \divisioMaxima
a2 gis2 fis2*4/2 ~ fis2*3/2 ~ \divisioMinima
fis2 ~ fis2 ~ fis4 e2*3/2 \divisioMaxima
fis2 d2 e2*3/2 ~ e2 a2*3/2 b2 ~ b2 a4 \finalis
}

bassMusic = {
r2*10/2 fis2*3/2 ~ fis2*3/2 ~ fis2*3/2 ~ fis4 ~ \divisioMinima
fis4 gis2*3/2 a2*5/2 ~ a4 ~ a2*5/2 ~ a4 \divisioMaior
r4 a2*3/2 ~ a2 gis2 fis2*4/2 ~ fis2 a4 ~ \divisioMaxima
a4 ~ a2 ~ a2*4/2 gis2*4/2 fis4 ~ \divisioMinima
fis4 e2 d2 ~ d2*3/2 ~ d2*3/2 cis2 ~ cis2 ~ cis4 \divisioMaior
e2 ~ e2 ~ e2*3/2 fis2 ~ fis2*4/2 gis4 \divisioMaior
fis2*3/2 ~ fis2*3/2 ~ fis2 ~ fis2*3/2 ~ fis2*4/2 ~ fis4 \divisioMaxima
a2*3/2 ~ a2 ~ a2*3/2 ~ a2*3/2 ~ a2*3/2 \divisioMinima
gis2 fis2*4/2 ~ fis2*3/2 ~ fis4 \finalis
r2*10/2 cis'2 b4 fis2*3/2 \divisioMaxima
b,2 ~ b,2 cis2*3/2 d2*3/2 cis4 ~ cis2 fis2*3/2 r2*11/2 \divisioMinima
r2*4/2 cis'2 b4 fis2*3/2 ~ \divisioMaxima
fis2 ~ fis2 ~ fis2*4/2 e2*3/2 \divisioMinima
d2 cis2 b,4 cis2*3/2 \divisioMaxima
b2 b,2 a,2*3/2 cis2 ~ cis2*3/2 ~ cis2 fis2 ~ fis4 \finalis
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
        "II"
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