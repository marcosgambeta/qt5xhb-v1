%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QFont

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bold
   METHOD capitalization
   METHOD defaultFamily
   METHOD exactMatch
   METHOD family
   METHOD fixedPitch
   METHOD fromString
   METHOD isCopyOf
   METHOD italic
   METHOD kerning
   METHOD key
   METHOD lastResortFamily
   METHOD lastResortFont
   METHOD letterSpacing
   METHOD letterSpacingType
   METHOD overline
   METHOD pixelSize
   METHOD pointSize
   METHOD pointSizeF
   METHOD rawMode
   METHOD rawName
   METHOD resolve
   METHOD setBold
   METHOD setCapitalization
   METHOD setFamily
   METHOD setFixedPitch
   METHOD setItalic
   METHOD setKerning
   METHOD setLetterSpacing
   METHOD setOverline
   METHOD setPixelSize
   METHOD setPointSize
   METHOD setPointSizeF
   METHOD setRawMode
   METHOD setRawName
   METHOD setStretch
   METHOD setStrikeOut
   METHOD setStyle
   METHOD setStyleHint
   METHOD setStyleStrategy
   METHOD setUnderline
   METHOD setWeight
   METHOD setWordSpacing
   METHOD stretch
   METHOD strikeOut
   METHOD style
   METHOD styleHint
   METHOD styleStrategy
   METHOD toString
   METHOD underline
   METHOD weight
   METHOD wordSpacing
   METHOD insertSubstitution
   METHOD insertSubstitutions
   METHOD substitute
   METHOD substitutes
   METHOD substitutions
   METHOD toVariant
   METHOD fromVariant

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>
#include <QVariant>

$prototype=QFont ()
$internalConstructor=|new1|

$prototype=QFont ( const QString & family, int pointSize = -1, int weight = -1, bool italic = false )
$internalConstructor=|new2|const QString &,int=-1,int=-1,bool=false

$prototype=QFont ( const QFont & font, QPaintDevice * pd )
$internalConstructor=|new3|const QFont &,QPaintDevice *

$prototype=QFont ( const QFont & font )
$internalConstructor=|new4|const QFont &

//[1]QFont ()
//[2]QFont ( const QString & family, int pointSize = -1, int weight = -1, bool italic = false )
//[3]QFont ( const QFont & font, QPaintDevice * pd )
//[4]QFont ( const QFont & font )

HB_FUNC_STATIC( QFONT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QFont_new1();
  }
  else if( ISBETWEEN(1,4) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) && ISOPTLOG(4) )
  {
    QFont_new2();
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) ) // TODO: implementar ISQPAINTDEVICE
  {
    QFont_new3();
  }
  else if( ISNUMPAR(1) && ISQFONT(1) )
  {
    QFont_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool bold () const
$method=|bool|bold|

$prototype=Capitalization capitalization () const
$method=|QFont::Capitalization|capitalization|

$prototype=QString defaultFamily () const
$method=|QString|defaultFamily|

$prototype=bool exactMatch () const
$method=|bool|exactMatch|

$prototype=QString family () const
$method=|QString|family|

$prototype=bool fixedPitch () const
$method=|bool|fixedPitch|

$prototype=bool fromString ( const QString & descrip )
$method=|bool|fromString|const QString &

$prototype=bool isCopyOf ( const QFont & f ) const
$method=|bool|isCopyOf|const QFont &

$prototype=bool italic () const
$method=|bool|italic|

$prototype=bool kerning () const
$method=|bool|kerning|

$prototype=QString key () const
$method=|QString|key|

$prototype=QString lastResortFamily () const
$method=|QString|lastResortFamily|

$prototype=QString lastResortFont () const
$method=|QString|lastResortFont|

$prototype=qreal letterSpacing () const
$method=|qreal|letterSpacing|

$prototype=SpacingType letterSpacingType () const
$method=|QFont::SpacingType|letterSpacingType|

$prototype=bool overline () const
$method=|bool|overline|

$prototype=int pixelSize () const
$method=|int|pixelSize|

$prototype=int pointSize () const
$method=|int|pointSize|

$prototype=qreal pointSizeF () const
$method=|qreal|pointSizeF|

$prototype=bool rawMode () const
$method=|bool|rawMode|

$prototype=QString rawName () const
$method=|QString|rawName|

$prototype=QFont resolve ( const QFont & other ) const
$method=|QFont|resolve|const QFont &

$prototype=void setBold ( bool enable )
$method=|void|setBold|bool

$prototype=void setCapitalization ( Capitalization caps )
$method=|void|setCapitalization|QFont::Capitalization

$prototype=void setFamily ( const QString & family )
$method=|void|setFamily|const QString &

$prototype=void setFixedPitch ( bool enable )
$method=|void|setFixedPitch|bool

$prototype=void setItalic ( bool enable )
$method=|void|setItalic|bool

$prototype=void setKerning ( bool enable )
$method=|void|setKerning|bool

$prototype=void setLetterSpacing ( SpacingType type, qreal spacing )
$method=|void|setLetterSpacing|QFont::SpacingType,qreal

$prototype=void setOverline ( bool enable )
$method=|void|setOverline|bool

$prototype=void setPixelSize ( int pixelSize )
$method=|void|setPixelSize|int

$prototype=void setPointSize ( int pointSize )
$method=|void|setPointSize|int

$prototype=void setPointSizeF ( qreal pointSize )
$method=|void|setPointSizeF|qreal

$prototype=void setRawMode ( bool enable )
$method=|void|setRawMode|bool

$prototype=void setRawName ( const QString & name )
$method=|void|setRawName|const QString &

$prototype=void setStretch ( int factor )
$method=|void|setStretch|int

$prototype=void setStrikeOut ( bool enable )
$method=|void|setStrikeOut|bool

$prototype=void setStyle ( Style style )
$method=|void|setStyle|QFont::Style

$prototype=void setStyleHint ( StyleHint hint, StyleStrategy strategy = PreferDefault )
$method=|void|setStyleHint|QFont::StyleHint,QFont::StyleStrategy=QFont::PreferDefault

$prototype=void setStyleStrategy ( StyleStrategy s )
$method=|void|setStyleStrategy|QFont::StyleStrategy

$prototype=void setUnderline ( bool enable )
$method=|void|setUnderline|bool

$prototype=void setWeight ( int weight )
$method=|void|setWeight|int

$prototype=void setWordSpacing ( qreal spacing )
$method=|void|setWordSpacing|qreal

$prototype=int stretch () const
$method=|int|stretch|

$prototype=bool strikeOut () const
$method=|bool|strikeOut|

$prototype=Style style () const
$method=|QFont::Style|style|

$prototype=StyleHint styleHint () const
$method=|QFont::StyleHint|styleHint|

$prototype=StyleStrategy styleStrategy () const
$method=|QFont::StyleStrategy|styleStrategy|

$prototype=QString toString () const
$method=|QString|toString|

$prototype=bool underline () const
$method=|bool|underline|

$prototype=int weight () const
$method=|int|weight|

$prototype=qreal wordSpacing () const
$method=|qreal|wordSpacing|

$prototype=static void insertSubstitution ( const QString & familyName, const QString & substituteName )
$staticMethod=|void|insertSubstitution|const QString &,const QString &

$prototype=static void insertSubstitutions ( const QString & familyName, const QStringList & substituteNames )
$staticMethod=|void|insertSubstitutions|const QString &,const QStringList &

$prototype=static QString substitute ( const QString & familyName )
$staticMethod=|QString|substitute|const QString &

$prototype=static QStringList substitutes ( const QString & familyName )
$staticMethod=|QStringList|substitutes|const QString &

$prototype=static QStringList substitutions ()
$staticMethod=|QStringList|substitutions|

$variantMethods

$extraMethods

#pragma ENDDUMP
