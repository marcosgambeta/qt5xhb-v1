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

/*
QFont ()
*/
$internalConstructor=|new1|

/*
QFont ( const QString & family, int pointSize = -1, int weight = -1, bool italic = false )
*/
$internalConstructor=|new2|const QString &,int=-1,int=-1,bool=false

/*
QFont ( const QFont & font, QPaintDevice * pd )
*/
$internalConstructor=|new3|const QFont &,QPaintDevice *

/*
QFont ( const QFont & font )
*/
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

/*
bool bold () const
*/
$method=|bool|bold|

/*
Capitalization capitalization () const
*/
$method=|QFont::Capitalization|capitalization|

/*
QString defaultFamily () const
*/
$method=|QString|defaultFamily|

/*
bool exactMatch () const
*/
$method=|bool|exactMatch|

/*
QString family () const
*/
$method=|QString|family|

/*
bool fixedPitch () const
*/
$method=|bool|fixedPitch|

/*
bool fromString ( const QString & descrip )
*/
$method=|bool|fromString|const QString &

/*
bool isCopyOf ( const QFont & f ) const
*/
$method=|bool|isCopyOf|const QFont &

/*
bool italic () const
*/
$method=|bool|italic|

/*
bool kerning () const
*/
$method=|bool|kerning|

/*
QString key () const
*/
$method=|QString|key|

/*
QString lastResortFamily () const
*/
$method=|QString|lastResortFamily|

/*
QString lastResortFont () const
*/
$method=|QString|lastResortFont|

/*
qreal letterSpacing () const
*/
$method=|qreal|letterSpacing|

/*
SpacingType letterSpacingType () const
*/
$method=|QFont::SpacingType|letterSpacingType|

/*
bool overline () const
*/
$method=|bool|overline|

/*
int pixelSize () const
*/
$method=|int|pixelSize|

/*
int pointSize () const
*/
$method=|int|pointSize|

/*
qreal pointSizeF () const
*/
$method=|qreal|pointSizeF|

/*
bool rawMode () const
*/
$method=|bool|rawMode|

/*
QString rawName () const
*/
$method=|QString|rawName|

/*
QFont resolve ( const QFont & other ) const
*/
$method=|QFont|resolve|const QFont &

/*
void setBold ( bool enable )
*/
$method=|void|setBold|bool

/*
void setCapitalization ( Capitalization caps )
*/
$method=|void|setCapitalization|QFont::Capitalization

/*
void setFamily ( const QString & family )
*/
$method=|void|setFamily|const QString &

/*
void setFixedPitch ( bool enable )
*/
$method=|void|setFixedPitch|bool

/*
void setItalic ( bool enable )
*/
$method=|void|setItalic|bool

/*
void setKerning ( bool enable )
*/
$method=|void|setKerning|bool

/*
void setLetterSpacing ( SpacingType type, qreal spacing )
*/
$method=|void|setLetterSpacing|QFont::SpacingType,qreal

/*
void setOverline ( bool enable )
*/
$method=|void|setOverline|bool

/*
void setPixelSize ( int pixelSize )
*/
$method=|void|setPixelSize|int

/*
void setPointSize ( int pointSize )
*/
$method=|void|setPointSize|int

/*
void setPointSizeF ( qreal pointSize )
*/
$method=|void|setPointSizeF|qreal

/*
void setRawMode ( bool enable )
*/
$method=|void|setRawMode|bool

/*
void setRawName ( const QString & name )
*/
$method=|void|setRawName|const QString &

/*
void setStretch ( int factor )
*/
$method=|void|setStretch|int

/*
void setStrikeOut ( bool enable )
*/
$method=|void|setStrikeOut|bool

/*
void setStyle ( Style style )
*/
$method=|void|setStyle|QFont::Style

/*
void setStyleHint ( StyleHint hint, StyleStrategy strategy = PreferDefault )
*/
$method=|void|setStyleHint|QFont::StyleHint,QFont::StyleStrategy=QFont::PreferDefault

/*
void setStyleStrategy ( StyleStrategy s )
*/
$method=|void|setStyleStrategy|QFont::StyleStrategy

/*
void setUnderline ( bool enable )
*/
$method=|void|setUnderline|bool

/*
void setWeight ( int weight )
*/
$method=|void|setWeight|int

/*
void setWordSpacing ( qreal spacing )
*/
$method=|void|setWordSpacing|qreal

/*
int stretch () const
*/
$method=|int|stretch|

/*
bool strikeOut () const
*/
$method=|bool|strikeOut|

/*
Style style () const
*/
$method=|QFont::Style|style|

/*
StyleHint styleHint () const
*/
$method=|QFont::StyleHint|styleHint|

/*
StyleStrategy styleStrategy () const
*/
$method=|QFont::StyleStrategy|styleStrategy|

/*
QString toString () const
*/
$method=|QString|toString|

/*
bool underline () const
*/
$method=|bool|underline|

/*
int weight () const
*/
$method=|int|weight|

/*
qreal wordSpacing () const
*/
$method=|qreal|wordSpacing|

/*
static void insertSubstitution ( const QString & familyName, const QString & substituteName )
*/
$staticMethod=|void|insertSubstitution|const QString &,const QString &

/*
static void insertSubstitutions ( const QString & familyName, const QStringList & substituteNames )
*/
$staticMethod=|void|insertSubstitutions|const QString &,const QStringList &

/*
static QString substitute ( const QString & familyName )
*/
$staticMethod=|QString|substitute|const QString &

/*
static QStringList substitutes ( const QString & familyName )
*/
$staticMethod=|QStringList|substitutes|const QString &

/*
static QStringList substitutions ()
*/
$staticMethod=|QStringList|substitutions|

$extraMethods

#pragma ENDDUMP
