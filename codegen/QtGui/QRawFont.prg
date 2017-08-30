$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QIMAGE
REQUEST QPAINTERPATH
REQUEST QRECTF
REQUEST QBYTEARRAY
#endif

CLASS QRawFont

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD swap
   METHOD familyName
   METHOD styleName
   METHOD style
   METHOD weight
   METHOD glyphIndexesForString
   METHOD advancesForGlyphIndexes
   METHOD glyphIndexesForChars
   METHOD alphaMapForGlyph
   METHOD pathForGlyph
   METHOD boundingRect
   METHOD setPixelSize
   METHOD pixelSize
   METHOD hintingPreference
   METHOD ascent
   METHOD descent
   METHOD leading
   METHOD xHeight
   METHOD averageCharWidth
   METHOD maxCharWidth
   METHOD lineThickness
   METHOD underlinePosition
   METHOD unitsPerEm
   METHOD loadFromFile
   METHOD loadFromData
   METHOD supportsCharacter1
   METHOD supportsCharacter2
   METHOD supportedWritingSystems
   METHOD fontTable
   METHOD fromFont

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

#include <QImage>

/*
QRawFont()
*/
$internalConstructor=|new1|

/*
QRawFont(const QString &fileName,qreal pixelSize,QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting)
*/
$internalConstructor=|new2|const QString &,qreal,QFont::HintingPreference=QFont::PreferDefaultHinting

/*
QRawFont(const QByteArray &fontData,qreal pixelSize,QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting)
*/
$internalConstructor=|new3|const QByteArray &,qreal,QFont::HintingPreference=QFont::PreferDefaultHinting

/*
QRawFont(const QRawFont &other)
*/
$internalConstructor=|new4|const QRawFont &

//[1]QRawFont()
//[2]QRawFont(const QString &fileName,qreal pixelSize,QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting)
//[3]QRawFont(const QByteArray &fontData,qreal pixelSize,QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting)
//[4]QRawFont(const QRawFont &other)

HB_FUNC_STATIC( QRAWFONT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRawFont_new1();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QRawFont_new2();
  }
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QRawFont_new3();
  }
  else if( ISNUMPAR(1) && ISQRAWFONT(1) )
  {
    QRawFont_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
void swap(QRawFont &other)
*/
$method=|void|swap|QRawFont &

/*
QString familyName() const
*/
$method=|QString|familyName|

/*
QString styleName() const
*/
$method=|QString|styleName|

/*
QFont::Style style() const
*/
$method=|QFont::Style|style|

/*
int weight() const
*/
$method=|int|weight|

/*
QVector<quint32> glyphIndexesForString(const QString &text) const
*/
$method=|QVector<quint32>|glyphIndexesForString|const QString &

/*
inline QVector<QPointF> advancesForGlyphIndexes(const QVector<quint32> &glyphIndexes) const
*/
$internalMethod=|QVector<QPointF>|advancesForGlyphIndexes,advancesForGlyphIndexes1|const QVector<quint32> &

/*
bool advancesForGlyphIndexes(const quint32 *glyphIndexes, QPointF *advances, int numGlyphs) const
*/
$internalMethod=|bool|advancesForGlyphIndexes,advancesForGlyphIndexes2|const quint32 *,QPointF *,int

//[1]inline QVector<QPointF> advancesForGlyphIndexes(const QVector<quint32> &glyphIndexes) const
//[2]bool advancesForGlyphIndexes(const quint32 *glyphIndexes, QPointF *advances, int numGlyphs) const

HB_FUNC_STATIC( QRAWFONT_ADVANCESFORGLYPHINDEXES )
{
  if( ISNUMPAR(1)  && ISARRAY(1) )
  {
    QRawFont_advancesForGlyphIndexes1();
  }
  else if( ISNUMPAR(3)  && ISARRAY(1) && ISQPOINTF(2) && ISNUM(3) )
  {
    QRawFont_advancesForGlyphIndexes2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool glyphIndexesForChars(const QChar *chars, int numChars, quint32 *glyphIndexes, int *numGlyphs) const
*/
$method=|bool|glyphIndexesForChars|const QChar *,int,quint32 *,int *

/*
QImage alphaMapForGlyph(quint32 glyphIndex,AntialiasingType antialiasingType = SubPixelAntialiasing,const QTransform &transform = QTransform()) const
*/
$method=|QImage|alphaMapForGlyph|quint32,QRawFont::AntialiasingType=QRawFont::SubPixelAntialiasing,const QTransform &=QTransform()

/*
QPainterPath pathForGlyph(quint32 glyphIndex) const
*/
$method=|QPainterPath|pathForGlyph|quint32

/*
QRectF boundingRect(quint32 glyphIndex) const
*/
method=|QRectF|boundingRect|quint32

/*
void setPixelSize(qreal pixelSize)
*/
$method=|void|setPixelSize|qreal

/*
qreal pixelSize() const
*/
$method=|qreal|pixelSize|

/*
QFont::HintingPreference hintingPreference() const
*/
$method=|QFont::HintingPreference|hintingPreference|

/*
qreal ascent() const
*/
$method=|qreal|ascent|

/*
qreal descent() const
*/
$method=|qreal|descent|

/*
qreal leading() const
*/
$method=|qreal|leading|

/*
qreal xHeight() const
*/
$method=|qreal|xHeight|

/*
qreal averageCharWidth() const
*/
$method=|qreal|averageCharWidth|

/*
qreal maxCharWidth() const
*/
method=|qreal|maxCharWidth|

/*
qreal lineThickness() const
*/
$method=|qreal|lineThickness|

/*
qreal underlinePosition() const
*/
$method=|qreal|underlinePosition|

/*
qreal unitsPerEm() const
*/
$method=|qreal|unitsPerEm|

/*
void loadFromFile(const QString &fileName,qreal pixelSize,QFont::HintingPreference hintingPreference)
*/
$method=|void|loadFromFile|const QString &,qreal,QFont::HintingPreference

/*
void loadFromData(const QByteArray &fontData,qreal pixelSize,QFont::HintingPreference hintingPreference)
*/
$method=|void|loadFromData|const QByteArray &,qreal,QFont::HintingPreference

/*
bool supportsCharacter(uint ucs4) const
*/
$internalMethod=|bool|supportsCharacter,supportsCharacter1|uint

/*
bool supportsCharacter(QChar character) const
*/
$internalMethod=|bool|supportsCharacter,supportsCharacter2|QChar

//[1]bool supportsCharacter(uint ucs4) const
//[2]bool supportsCharacter(QChar character) const

HB_FUNC_STATIC( QRAWFONT_SUPPORTSCHARACTER )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QRawFont_supportsCharacter1();
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QRawFont_supportsCharacter2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QList<QFontDatabase::WritingSystem> supportedWritingSystems() const
*/
$method=|QList<QFontDatabase::WritingSystem>|supportedWritingSystems|

/*
QByteArray fontTable(const char *tagName) const
*/
$method=|QByteArray|fontTable|const char *

/*
static QRawFont fromFont(const QFont &font,QFontDatabase::WritingSystem writingSystem = QFontDatabase::Any)
*/
$staticMethod=|QRawFont|fromFont|const QFont &,QFontDatabase::WritingSystem=QFontDatabase::Any

$extraMethods

#pragma ENDDUMP
