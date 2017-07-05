$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QBITARRAY
REQUEST QCHAR
REQUEST QDATE
REQUEST QTIME
REQUEST QDATETIME
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QRECT
REQUEST QRECTF
REQUEST QSIZE
REQUEST QSIZEF
REQUEST QLINE
REQUEST QLINEF
REQUEST QLOCALE
REQUEST QREGEXP
REQUEST QREGULAREXPRESSION
REQUEST QURL
REQUEST QEASINGCURVE
REQUEST QUUID
REQUEST QMODELINDEX
REQUEST QJSONVALUE
REQUEST QJSONOBJECT
REQUEST QJSONARRAY
REQUEST QJSONDOCUMENT
#endif

CLASS QVariant

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new2
   METHOD new7
   METHOD new8
   METHOD new9
   METHOD new10
   METHOD new12
   METHOD new13
   METHOD new14
   METHOD new17
   METHOD new19
   METHOD new24
   METHOD new25
   METHOD new26
   METHOD new
   METHOD delete
   METHOD swap
   METHOD type
   METHOD userType
   METHOD typeName
   METHOD canConvert
   METHOD convert
   METHOD isValid
   METHOD isNull
   METHOD clear
   METHOD detach
   METHOD isDetached
   METHOD toInt
   METHOD toUInt
   METHOD toLongLong
   METHOD toULongLong
   METHOD toBool
   METHOD toDouble
   METHOD toFloat
   METHOD toReal
   METHOD toByteArray
   METHOD toBitArray
   METHOD toString
   METHOD toStringList
   METHOD toChar
   METHOD toDate
   METHOD toTime
   METHOD toDateTime
   METHOD toList
   METHOD toPoint
   METHOD toPointF
   METHOD toRect
   METHOD toRectF
   METHOD toSize
   METHOD toSizeF
   METHOD toLine
   METHOD toLineF
   METHOD toLocale
   METHOD toRegExp
   METHOD toRegularExpression
   METHOD toUrl
   METHOD toEasingCurve
   METHOD toUuid
   METHOD toModelIndex
   METHOD toJsonValue
   METHOD toJsonObject
   METHOD toJsonArray
   METHOD toJsonDocument
   METHOD load
   METHOD save
   METHOD data
   METHOD typeToName
   METHOD nameToType

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

#include <QDataStream>
#include <QByteArray>
#include <QBitArray>
#include <QString>
#include <QLatin1String>
#include <QStringList>
#include <QChar>
#include <QDate>
#include <QTime>
#include <QDateTime>
#include <QList>
#include <QMap>
#include <QHash>
#include <QSize>
#include <QSizeF>
#include <QPoint>
#include <QPointF>
#include <QLine>
#include <QLineF>
#include <QRect>
#include <QRectF>
#include <QLocale>
#include <QRegExp>
#include <QRegularExpression>
#include <QUrl>
#include <QEasingCurve>
#include <QUuid>
#include <QModelIndex>
#include <QJsonValue>
#include <QJsonObject>
#include <QJsonArray>
#include <QJsonDocument>

/*
QVariant()
*/
void QVariant_new1 ()
{
  QVariant * o = new QVariant ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(Type type)
*/
HB_FUNC_STATIC( QVARIANT_NEW2 )
{
  QVariant * o = new QVariant ( (QVariant::Type) hb_parni(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(int typeId, const void *copy)
*/
void QVariant_new3 ()
{
  QVariant * o = new QVariant ( PINT(1), (const void *) hb_parptr(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(int typeId, const void *copy, uint flags)
*/
void QVariant_new4 ()
{
  QVariant * o = new QVariant ( PINT(1), (const void *) hb_parptr(2), (uint) hb_parni(3) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QVariant &other)
*/
void QVariant_new5 ()
{
  QVariant * o = new QVariant ( *PQVARIANT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(QDataStream &s)
*/
void QVariant_new6 ()
{
#ifndef QT_NO_DATASTREAM
  QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(int i)
*/
HB_FUNC_STATIC( QVARIANT_NEW7 )
{
  QVariant * o = new QVariant ( PINT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(uint ui)
*/
HB_FUNC_STATIC( QVARIANT_NEW8 )
{
  uint par1 = hb_parni(1);
  QVariant * o = new QVariant ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(qlonglong ll)
*/
HB_FUNC_STATIC( QVARIANT_NEW9 )
{
  qlonglong par1 = hb_parnll(1);
  QVariant * o = new QVariant ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(qulonglong ull)
*/
HB_FUNC_STATIC( QVARIANT_NEW10 )
{
  qulonglong par1 = hb_parnll(1);
  QVariant * o = new QVariant ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(bool b)
*/
void QVariant_new11 ()
{
  bool par1 = hb_parl(1);
  QVariant * o = new QVariant ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(double d)
*/
HB_FUNC_STATIC( QVARIANT_NEW12 )
{
  QVariant * o = new QVariant ( PDOUBLE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(float f)
*/
HB_FUNC_STATIC( QVARIANT_NEW13 )
{
  QVariant * o = new QVariant ( PFLOAT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const char *str)
*/
HB_FUNC_STATIC( QVARIANT_NEW14 )
{
#ifndef QT_NO_CAST_FROM_ASCII
  QVariant * o = new QVariant ( PCONSTCHAR(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QByteArray &bytearray)
*/
void QVariant_new15 ()
{
  QVariant * o = new QVariant ( *PQBYTEARRAY(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QBitArray &bitarray)
*/
void QVariant_new16 ()
{
  QVariant * o = new QVariant ( *PQBITARRAY(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QString &string)
*/
HB_FUNC_STATIC( QVARIANT_NEW17 )
{
  QVariant * o = new QVariant ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(QLatin1String string)
*/
void QVariant_new18 ()
{
  QLatin1String * par1 = (QLatin1String *) _qt5xhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QStringList &stringlist)
*/
HB_FUNC_STATIC( QVARIANT_NEW19 )
{
  QVariant * o = new QVariant ( PQSTRINGLIST(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(QChar qchar)
*/
void QVariant_new20 ()
{
  QChar * par1 = (QChar *) _qt5xhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QDate &date)
*/
void QVariant_new21 ()
{
  QVariant * o = new QVariant ( *PQDATE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QTime &time)
*/
void QVariant_new22 ()
{
  QVariant * o = new QVariant ( *PQTIME(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QDateTime &datetime)
*/
void QVariant_new23 ()
{
  QVariant * o = new QVariant ( *PQDATETIME(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QList<QVariant> &list)
*/
HB_FUNC_STATIC( QVARIANT_NEW24 )
{
  QVariant * o = new QVariant ( PQVARIANTLIST(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QMap<QString,QVariant> &map)
*/
HB_FUNC_STATIC( QVARIANT_NEW25 )
{
  QVariant * o = new QVariant ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QHash<QString,QVariant> &hash)
*/
HB_FUNC_STATIC( QVARIANT_NEW26 )
{
  QVariant * o = new QVariant ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QSize &size)
*/
void QVariant_new27 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQSIZE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QSizeF &size)
*/
void QVariant_new28 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQSIZEF(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QPoint &pt)
*/
void QVariant_new29 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQPOINT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QPointF &pt)
*/
void QVariant_new30 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQPOINTF(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QLine &line)
*/
void QVariant_new31 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQLINE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QLineF &line)
*/
void QVariant_new32 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQLINEF(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QRect &rect)
*/
void QVariant_new33 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQRECT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QRectF &rect)
*/
void QVariant_new34 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQRECTF(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QLocale &locale)
*/
void QVariant_new35 ()
{
  QVariant * o = new QVariant ( *PQLOCALE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QRegExp &regExp)
*/
void QVariant_new36 ()
{
#ifndef QT_NO_REGEXP
  QVariant * o = new QVariant ( *PQREGEXP(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QRegularExpression &re)
*/
void QVariant_new37 ()
{
#ifndef QT_NO_REGULAREXPRESSION
  QVariant * o = new QVariant ( *PQREGULAREXPRESSION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QUrl &url)
*/
void QVariant_new38 ()
{
  QVariant * o = new QVariant ( *PQURL(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QEasingCurve &easing)
*/
void QVariant_new39 ()
{
  QVariant * o = new QVariant ( *PQEASINGCURVE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QUuid &uuid)
*/
void QVariant_new40 ()
{
  QVariant * o = new QVariant ( *PQUUID(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QModelIndex &modelIndex)
*/
void QVariant_new41 ()
{
  QVariant * o = new QVariant ( *PQMODELINDEX(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QJsonValue &jsonValue)
*/
void QVariant_new42 ()
{
  QVariant * o = new QVariant ( *PQJSONVALUE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QJsonObject &jsonObject)
*/
void QVariant_new43 ()
{
  QVariant * o = new QVariant ( *PQJSONOBJECT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QJsonArray &jsonArray)
*/
void QVariant_new44 ()
{
  QVariant * o = new QVariant ( *PQJSONARRAY(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QJsonDocument &jsonDocument)
*/
void QVariant_new45 ()
{
  QVariant * o = new QVariant ( *PQJSONDOCUMENT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QVariant()
//[2]QVariant(Type type)
//[3]QVariant(int typeId, const void *copy)
//[4]QVariant(int typeId, const void *copy, uint flags)
//[5]QVariant(const QVariant &other)
//[6]QVariant(QDataStream &s)
//[7]QVariant(int i)
//[8]QVariant(uint ui)
//[9]QVariant(qlonglong ll)
//[10]QVariant(qulonglong ull)
//[11]QVariant(bool b)
//[12]QVariant(double d)
//[13]QVariant(float f)
//[14]QVariant(const char *str)
//[15]QVariant(const QByteArray &bytearray)
//[16]QVariant(const QBitArray &bitarray)
//[17]QVariant(const QString &string)
//[18]QVariant(QLatin1String string)
//[19]QVariant(const QStringList &stringlist)
//[20]QVariant(QChar qchar)
//[21]QVariant(const QDate &date)
//[22]QVariant(const QTime &time)
//[23]QVariant(const QDateTime &datetime)
//[24]QVariant(const QList<QVariant> &list)
//[25]QVariant(const QMap<QString,QVariant> &map)
//[26]QVariant(const QHash<QString,QVariant> &hash)
//[27]QVariant(const QSize &size)
//[28]QVariant(const QSizeF &size)
//[29]QVariant(const QPoint &pt)
//[30]QVariant(const QPointF &pt)
//[31]QVariant(const QLine &line)
//[32]QVariant(const QLineF &line)
//[33]QVariant(const QRect &rect)
//[34]QVariant(const QRectF &rect)
//[35]QVariant(const QLocale &locale)
//[36]QVariant(const QRegExp &regExp)
//[37]QVariant(const QRegularExpression &re)
//[38]QVariant(const QUrl &url)
//[39]QVariant(const QEasingCurve &easing)
//[40]QVariant(const QUuid &uuid)
//[41]QVariant(const QModelIndex &modelIndex)
//[42]QVariant(const QJsonValue &jsonValue)
//[43]QVariant(const QJsonObject &jsonObject)
//[44]QVariant(const QJsonArray &jsonArray)
//[45]QVariant(const QJsonDocument &jsonDocument)

/*
TODO: implementar reconhecimento de parâmetros, se possível, para os casos abaixo

[2]QVariant(Type type)
[8]QVariant(uint ui)
[10]QVariant(qulonglong ull)
[13]QVariant(float f)
[14]QVariant(const char *str)
[24]QVariant(const QList<QVariant> &list)
[25]QVariant(const QMap<QString,QVariant> &map)
[26]QVariant(const QHash<QString,QVariant> &hash)
*/

HB_FUNC_STATIC( QVARIANT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVariant_new1();
  }
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    if( ISQVARIANT(1) )
    {
      QVariant_new5();
    }
    else if( ISQDATASTREAM(1) )
    {
      QVariant_new6();
    }
    else if( ISQBYTEARRAY(1) )
    {
      QVariant_new15();
    }
    else if( ISQBITARRAY(1) )
    {
      QVariant_new16();
    }
    else if( ISQLATIN1STRING(1) )
    {
      QVariant_new18();
    }
    else if( ISQCHAR(1) )
    {
      QVariant_new20();
    }
    else if( ISQDATE(1) )
    {
      QVariant_new21();
    }
    else if( ISQTIME(1) )
    {
      QVariant_new22();
    }
    else if( ISQDATETIME(1) )
    {
      QVariant_new23();
    }
    else if( ISQSIZE(1) )
    {
      QVariant_new27();
    }
    else if( ISQSIZEF(1) )
    {
      QVariant_new28();
    }
    else if( ISQPOINT(1) )
    {
      QVariant_new29();
    }
    else if( ISQPOINTF(1) )
    {
      QVariant_new30();
    }
    else if( ISQLINE(1) )
    {
      QVariant_new31();
    }
    else if( ISQLINEF(1) )
    {
      QVariant_new32();
    }
    else if( ISQRECT(1) )
    {
      QVariant_new33();
    }
    else if( ISQRECTF(1) )
    {
      QVariant_new34();
    }
    else if( ISQLOCALE(1) )
    {
      QVariant_new35();
    }
    else if( ISQREGEXP(1) )
    {
      QVariant_new36();
    }
    else if( ISQREGULAREXPRESSION(1) )
    {
      QVariant_new37();
    }
    else if( ISQURL(1) )
    {
      QVariant_new38();
    }
    else if( ISQEASINGCURVE(1) )
    {
      QVariant_new39();
    }
    else if( ISQUUID(1) )
    {
      QVariant_new40();
    }
    else if( ISQMODELINDEX(1) )
    {
      QVariant_new41();
    }
    else if( ISQJSONVALUE(1) )
    {
      QVariant_new42();
    }
    else if( ISQJSONOBJECT(1) )
    {
      QVariant_new43();
    }
    else if( ISQJSONARRAY(1) )
    {
      QVariant_new44();
    }
    else if( ISQJSONDOCUMENT(1) )
    {
      QVariant_new45();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    if( hb_param( 1, HB_IT_DOUBLE ) != NULL )
    {
      HB_FUNC_EXEC( QVARIANT_NEW12 );
    }
    else if( hb_param( 1, HB_IT_LONG ) != NULL )
    {
      HB_FUNC_EXEC( QVARIANT_NEW9 );
    }
    else
    {
      HB_FUNC_EXEC( QVARIANT_NEW7 );
    }
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    QVariant_new11();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW17 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW19 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISPOINTER(2) )
  {
    QVariant_new3();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISPOINTER(2) && ISNUM(3) )
  {
    QVariant_new4();
  }
  else if( ISNUMPAR(1) && hb_param( 1, HB_IT_DATE ) != NULL )
  {
    int y, m, d;
    hb_dateDecode( hb_itemGetDL( hb_param( 1, HB_IT_DATE ) ), &y, &m, &d );
    QDate date(y, m, d);
    QVariant * o = new QVariant ( date );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QVariant &other)
*/
HB_FUNC_STATIC( QVARIANT_SWAP )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQVARIANT(1) )
    {
      obj->swap ( *PQVARIANT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Type type() const
*/
HB_FUNC_STATIC( QVARIANT_TYPE )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type () );
  }
}

/*
int userType() const
*/
HB_FUNC_STATIC( QVARIANT_USERTYPE )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->userType () );
  }
}

/*
const char *typeName() const
*/
HB_FUNC_STATIC( QVARIANT_TYPENAME )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const char * str1 = obj->typeName ();
    hb_retc( str1 );
  }
}

/*
bool canConvert(int targetTypeId) const
*/
$method=|bool|canConvert|int

/*
bool convert(int targetTypeId)
*/
$method=|bool|convert|int

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
void clear()
*/
$method=|void|clear|

/*
void detach()
*/
$method=|void|detach|

/*
bool isDetached() const
*/
$method=|bool|isDetached|

/*
int toInt(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOINT )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) ) // TODO: implementar parametro opcional
    {
      bool par1;
      RINT( obj->toInt ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
uint toUInt(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOUINT )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) ) // TODO: implementar parametro opcional
    {
      bool par1;
      hb_retni( obj->toUInt ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qlonglong toLongLong(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOLONGLONG )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) ) // TODO: implementar parametro opcional
    {
      bool par1;
      hb_retnll( obj->toLongLong ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qulonglong toULongLong(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOULONGLONG )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) ) // TODO: implementar parametro opcional
    {
      bool par1;
      hb_retnll( obj->toULongLong ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool toBool() const
*/
$method=|bool|toBool|

/*
double toDouble(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TODOUBLE )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) ) // TODO: implementar parametro opcional
    {
      bool par1;
      RDOUBLE( obj->toDouble ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
float toFloat(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOFLOAT )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) ) // TODO: implementar parametro opcional
    {
      bool par1;
      RFLOAT( obj->toFloat ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal toReal(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOREAL )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) ) // TODO: implementar parametro opcional
    {
      bool par1;
      RQREAL( obj->toReal ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray toByteArray() const
*/
HB_FUNC_STATIC( QVARIANT_TOBYTEARRAY )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toByteArray () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QBitArray toBitArray() const
*/
HB_FUNC_STATIC( QVARIANT_TOBITARRAY )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBitArray * ptr = new QBitArray( obj->toBitArray () );
    _qt5xhb_createReturnClass ( ptr, "QBITARRAY" );
  }
}

/*
QString toString() const
*/
$method=|QString|toString|

/*
QStringList toStringList() const
*/
$method=|QStringList|toStringList|

/*
QChar toChar() const
*/
HB_FUNC_STATIC( QVARIANT_TOCHAR )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QChar * ptr = new QChar( obj->toChar () );
    _qt5xhb_createReturnClass ( ptr, "QCHAR" );
  }
}

/*
QDate toDate() const
*/
HB_FUNC_STATIC( QVARIANT_TODATE )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDate * ptr = new QDate( obj->toDate () );
    _qt5xhb_createReturnClass ( ptr, "QDATE", true );
  }
}

/*
QTime toTime() const
*/
HB_FUNC_STATIC( QVARIANT_TOTIME )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTime * ptr = new QTime( obj->toTime () );
    _qt5xhb_createReturnClass ( ptr, "QTIME", true );
  }
}

/*
QDateTime toDateTime() const
*/
HB_FUNC_STATIC( QVARIANT_TODATETIME )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->toDateTime () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}

/*
QList<QVariant> toList() const
*/
HB_FUNC_STATIC( QVARIANT_TOLIST )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    _qt5xhb_convert_qvariantlist_to_array( obj->toList () );
  }
}

/*
QPoint toPoint() const
*/
HB_FUNC_STATIC( QVARIANT_TOPOINT )
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->toPoint () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
#endif
}

/*
QPointF toPointF() const
*/
HB_FUNC_STATIC( QVARIANT_TOPOINTF )
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->toPointF () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
#endif
}

/*
QRect toRect() const
*/
HB_FUNC_STATIC( QVARIANT_TORECT )
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->toRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
#endif
}

/*
QRectF toRectF() const
*/
HB_FUNC_STATIC( QVARIANT_TORECTF )
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->toRectF () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
#endif
}

/*
QSize toSize() const
*/
HB_FUNC_STATIC( QVARIANT_TOSIZE )
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->toSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
#endif
}

/*
QSizeF toSizeF() const
*/
HB_FUNC_STATIC( QVARIANT_TOSIZEF )
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->toSizeF () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
#endif
}

/*
QLine toLine() const
*/
HB_FUNC_STATIC( QVARIANT_TOLINE )
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLine * ptr = new QLine( obj->toLine () );
    _qt5xhb_createReturnClass ( ptr, "QLINE", true );
  }
#endif
}

/*
QLineF toLineF() const
*/
HB_FUNC_STATIC( QVARIANT_TOLINEF )
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLineF * ptr = new QLineF( obj->toLineF () );
    _qt5xhb_createReturnClass ( ptr, "QLINEF", true );
  }
#endif
}

/*
QLocale toLocale() const
*/
HB_FUNC_STATIC( QVARIANT_TOLOCALE )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLocale * ptr = new QLocale( obj->toLocale () );
    _qt5xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}

/*
QRegExp toRegExp() const
*/
HB_FUNC_STATIC( QVARIANT_TOREGEXP )
{
#ifndef QT_NO_REGEXP
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegExp * ptr = new QRegExp( obj->toRegExp () );
    _qt5xhb_createReturnClass ( ptr, "QREGEXP", true );
  }
#endif
}

/*
QRegularExpression toRegularExpression() const
*/
HB_FUNC_STATIC( QVARIANT_TOREGULAREXPRESSION )
{
#ifndef QT_NO_REGULAREXPRESSION
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegularExpression * ptr = new QRegularExpression( obj->toRegularExpression () );
    _qt5xhb_createReturnClass ( ptr, "QREGULAREXPRESSION", true );
  }
#endif
}

/*
QUrl toUrl() const
*/
$method=|QUrl|toUrl|

/*
QEasingCurve toEasingCurve() const
*/
$method=|QEasingCurve|toEasingCurve|

/*
QUuid toUuid() const
*/
$method=|QUuid|toUuid|

/*
QModelIndex toModelIndex() const
*/
$method=|QModelIndex|toModelIndex|

/*
QJsonValue toJsonValue() const
*/
$method=|QJsonValue|toJsonValue|

/*
QJsonObject toJsonObject() const
*/
$method=|QJsonObject|toJsonObject|

/*
QJsonArray toJsonArray() const
*/
$method=|QJsonArray|toJsonArray|

/*
QJsonDocument toJsonDocument() const
*/
$method=|QJsonDocument|toJsonDocument|

/*
void load(QDataStream &ds)
*/
HB_FUNC_STATIC( QVARIANT_LOAD )
{
#ifndef QT_NO_DATASTREAM
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATASTREAM(1) )
    {
      QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
      obj->load ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void save(QDataStream &ds) const
*/
HB_FUNC_STATIC( QVARIANT_SAVE )
{
#ifndef QT_NO_DATASTREAM
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATASTREAM(1) )
    {
      QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
      obj->save ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void *data()
*/
HB_FUNC_STATIC( QVARIANT_DATA )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retptr( (void *) obj->data () );
  }
}

/*
static const char *typeToName(int typeId)
*/
$staticMethod=|const char *|typeToName|int

/*
static Type nameToType(const char *name)
*/
$staticMethod=|QVariant::Type|nameToType|const char *

$extraMethods

#pragma ENDDUMP
