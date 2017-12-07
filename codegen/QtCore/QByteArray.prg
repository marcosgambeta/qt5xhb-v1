$header

#include "hbclass.ch"

CLASS QByteArray

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append1
   METHOD append2
   METHOD append3
   METHOD append4
   METHOD append5
   METHOD append
   METHOD at
   METHOD capacity
   METHOD chop
   METHOD clear
   METHOD constData
   METHOD contains
   METHOD count
   METHOD data2
   METHOD data
   METHOD endsWith
   METHOD fill
   METHOD indexOf1
   METHOD indexOf2
   METHOD indexOf3
   METHOD indexOf4
   METHOD indexOf
   METHOD insert1
   METHOD insert2
   METHOD insert3
   METHOD insert4
   METHOD insert5
   METHOD insert
   METHOD isEmpty
   METHOD isNull
   METHOD lastIndexOf1
   METHOD lastIndexOf2
   METHOD lastIndexOf3
   METHOD lastIndexOf4
   METHOD lastIndexOf
   METHOD left
   METHOD leftJustified
   METHOD length
   METHOD mid
   METHOD prepend
   METHOD push_back
   METHOD push_front
   METHOD remove
   METHOD repeated
   METHOD replace1
   METHOD replace2
   METHOD replace3
   METHOD replace4
   METHOD replace5
   METHOD replace6
   METHOD replace7
   METHOD replace8
   METHOD replace9
   METHOD replace10
   METHOD replace11
   METHOD replace12
   METHOD replace13
   METHOD replace14
   METHOD replace
   METHOD reserve
   METHOD resize
   METHOD right
   METHOD rightJustified
   METHOD setNum1
   METHOD setNum2
   METHOD setNum3
   METHOD setNum4
   METHOD setNum5
   METHOD setNum6
   METHOD setNum7
   METHOD setNum8
   METHOD setNum
   METHOD setRawData
   METHOD simplified
   METHOD size
   METHOD split
   METHOD squeeze
   METHOD startsWith
   METHOD toBase64
   METHOD toDouble
   METHOD toFloat
   METHOD toHex
   METHOD toInt
   METHOD toLong
   METHOD toLongLong
   METHOD toLower
   METHOD toPercentEncoding
   METHOD toShort
   METHOD toUInt
   METHOD toULong
   METHOD toULongLong
   METHOD toUShort
   METHOD toUpper
   METHOD trimmed
   METHOD truncate
   METHOD fromBase64
   METHOD fromHex
   METHOD fromPercentEncoding
   METHOD fromRawData
   METHOD number1
   METHOD number2
   METHOD number3
   METHOD number4
   METHOD number5
   METHOD number

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

#include <QString>
#include <QList>

$prototype=QByteArray ()
$internalConstructor=|new1|

$prototype=QByteArray ( const char * str )
$internalConstructor=|new2|const char *

$prototype=QByteArray ( const char * data, int size )
$internalConstructor=|new3|const char *,int

$prototype=QByteArray ( int size, char ch )
void QByteArray_new4 ()
{
  char par2 = ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0);
  QByteArray * o = new QByteArray ( PINT(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$prototype=QByteArray ( const QByteArray & other )
$internalConstructor=|new5|const QByteArray &

//[1]QByteArray ()
//[2]QByteArray ( const char * str )
//[3]QByteArray ( const char * data, int size )
//[4]QByteArray ( int size, char ch )
//[5]QByteArray ( const QByteArray & other )

HB_FUNC_STATIC( QBYTEARRAY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QByteArray_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QByteArray_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QByteArray_new3();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QByteArray_new4();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArray_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QByteArray & append ( const QByteArray & ba )
$method=|QByteArray &|append,append1|const QByteArray &

$prototype=QByteArray & append ( const QString & str )
$method=|QByteArray &|append,append2|const QString &

$prototype=QByteArray & append ( const char * str )
$method=|QByteArray &|append,append3|const char *

$prototype=QByteArray & append ( const char * str, int len )
$method=|QByteArray &|append,append4|const char *,int

$prototype=QByteArray & append ( char ch )
$method=|QByteArray &|append,append5|char

%% TODO: resolver conflito entre [2] e [3]

//[1]QByteArray & append ( const QByteArray & ba )
//[2]QByteArray & append ( const QString & str )
//[3]QByteArray & append ( const char * str )
//[4]QByteArray & append ( const char * str, int len )
//[5]QByteArray & append ( char ch )

HB_FUNC_STATIC( QBYTEARRAY_APPEND )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_APPEND1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_APPEND2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_APPEND4 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_APPEND5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=char at ( int i ) const
$method=|char|at|int

$prototype=int capacity () const
$method=|int|capacity|

$prototype=void chop ( int n )
$method=|void|chop|int

$prototype=void clear ()
$method=|void|clear|

$prototype=const char * constData () const
$method=|const char *|constData|

$prototype=bool contains ( const QByteArray & ba ) const
$internalMethod=|bool|contains,contains1|const QByteArray &

$prototype=bool contains ( const char * str ) const
$internalMethod=|bool|contains,contains2|const char *

$prototype=bool contains ( char ch ) const
$internalMethod=|bool|contains,contains3|char

//[1]bool contains ( const QByteArray & ba ) const
//[2]bool contains ( const char * str ) const
//[3]bool contains ( char ch ) const

HB_FUNC_STATIC( QBYTEARRAY_CONTAINS )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArray_contains1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QByteArray_contains2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QByteArray_contains3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int count ( const QByteArray & ba ) const
$internalMethod=|int|count,count1|const QByteArray &

$prototype=int count ( const char * str ) const
$internalMethod=|int|count,count2|const char *

$prototype=int count ( char ch ) const
$internalMethod=|int|count,count3|char

$prototype=int count () const
$internalMethod=|int|count,count4|

//[1]int count ( const QByteArray & ba ) const
//[2]int count ( const char * str ) const
//[3]int count ( char ch ) const
//[4]int count () const

HB_FUNC_STATIC( QBYTEARRAY_COUNT )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArray_count1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QByteArray_count2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QByteArray_count3();
  }
  else if( ISNUMPAR(0) )
  {
    QByteArray_count4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=const char * data () const
$method=|const char *|data,data2|

// TODO: revisar implementacao dos metodos
//[1]char * data ()
//[2]const char * data () const

HB_FUNC_STATIC( QBYTEARRAY_DATA )
{
  HB_FUNC_EXEC( QBYTEARRAY_DATA2 );
}

$prototype=bool endsWith ( const QByteArray & ba ) const
$internalMethod=|bool|endsWith,endsWith1|const QByteArray &

$prototype=bool endsWith ( const char * str ) const
$internalMethod=|bool|endsWith,endsWith2|const char *

$prototype=bool endsWith ( char ch ) const
$internalMethod=|bool|endsWith,endsWith3|char

//[1]bool endsWith ( const QByteArray & ba ) const
//[2]bool endsWith ( const char * str ) const
//[3]bool endsWith ( char ch ) const

HB_FUNC_STATIC( QBYTEARRAY_ENDSWITH )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArray_endsWith1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QByteArray_endsWith2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QByteArray_endsWith3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QByteArray & fill ( char ch, int size = -1 )
$method=|QByteArray &|fill|char,int=-1

$prototype=int indexOf ( const QByteArray & ba, int from = 0 ) const
$internalMethod=|int|indexOf,indexOf1|const QByteArray &,int=0

$prototype=int indexOf ( const QString & str, int from = 0 ) const
$internalMethod=|int|indexOf,indexOf2|const QString &,int=0

$prototype=int indexOf ( const char * str, int from = 0 ) const
$method=|int|indexOf,indexOf3|const char *,int=0

$prototype=int indexOf ( char ch, int from = 0 ) const
$method=|int|indexOf,indexOf4|char,int=0

// TODO: resolver conflito entre [2] e [3]
//[1]int indexOf ( const QByteArray & ba, int from = 0 ) const
//[2]int indexOf ( const QString & str, int from = 0 ) const
//[3]int indexOf ( const char * str, int from = 0 ) const
//[4]int indexOf ( char ch, int from = 0 ) const

HB_FUNC_STATIC( QBYTEARRAY_INDEXOF )
{
  if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTNUM(2) )
  {
    QByteARRAY_indexOf1 ();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QByteARRAY_indexOf2 ();
  }
  //else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  //{
  //  HB_FUNC_EXEC( QBYTEARRAY_INDEXOF3 );
  //}
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INDEXOF4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QByteArray & insert ( int i, const QByteArray & ba )
$method=|QByteArray &|insert,insert1|int,const QByteArray &

$prototype=QByteArray & insert ( int i, const QString & str )
$method=|QByteArray &|insert,insert2|int,const QString &

$prototype=QByteArray & insert ( int i, const char * str )
$method=|QByteArray &|insert,insert3|int,const char *

$prototype=QByteArray & insert ( int i, const char * str, int len )
$method=|QByteArray &|insert,insert4|int,const char *,int

$prototype=QByteArray & insert ( int i, char ch )
$method=|QByteArray &|insert,insert5|int,char

%% TODO: resolver conflito entre [2] e [3]
//[1]QByteArray & insert ( int i, const QByteArray & ba )
//[2]QByteArray & insert ( int i, const QString & str )
//[3]QByteArray & insert ( int i, const char * str )
//[4]QByteArray & insert ( int i, const char * str, int len )
//[5]QByteArray & insert ( int i, char ch )

HB_FUNC_STATIC( QBYTEARRAY_INSERT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INSERT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INSERT2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INSERT4 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INSERT5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isEmpty () const
$method=|bool|isEmpty|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=int lastIndexOf ( const QByteArray & ba, int from = -1 ) const
$method=|int|lastIndexOf,lastIndexOf1|const QByteArray &,int=-1

$prototype=int lastIndexOf ( const QString & str, int from = -1 ) const
$method=|int|lastIndexOf,lastIndexOf2|const QString &,int=-1

$prototype=int lastIndexOf ( const char * str, int from = -1 ) const
$method=|int|lastIndexOf,lastIndexOf3|const char *,int=-1

$prototype=int lastIndexOf ( char ch, int from = -1 ) const
$method=|int|lastIndexOf,lastIndexOf4|char,int=-1

%% TODO: resolver conflito entre [2] e [3]
//[1]int lastIndexOf ( const QByteArray & ba, int from = -1 ) const
//[2]int lastIndexOf ( const QString & str, int from = -1 ) const
//[3]int lastIndexOf ( const char * str, int from = -1 ) const
//[4]int lastIndexOf ( char ch, int from = -1 ) const

HB_FUNC_STATIC( QBYTEARRAY_LASTINDEXOF )
{
  if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_LASTINDEXOF1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_LASTINDEXOF2 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_LASTINDEXOF3 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_LASTINDEXOF4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QByteArray left ( int len ) const
$method=|QByteArray|left|int

$prototype=QByteArray leftJustified ( int width, char fill = ' ', bool truncate = false ) const
$method=|QByteArray|leftJustified|int,char=' ',bool=false

$prototype=int length () const
$method=|int|length|

$prototype=QByteArray mid ( int pos, int len = -1 ) const
$method=|QByteArray|mid|int,int=-1

$prototype=QByteArray & prepend ( const QByteArray & ba )
$internalMethod=|QByteArray &|prepend,prepend1|const QByteArray &

$prototype=QByteArray & prepend ( const char * str )
$internalMethod=|QByteArray &|prepend,prepend2|const char *

$prototype=QByteArray & prepend ( const char * str, int len )
$internalMethod=|QByteArray &|prepend,prepend3|const char *,int

$prototype=QByteArray & prepend ( char ch )
$internalMethod=|QByteArray &|prepend,prepend4|char

//[1]QByteArray & prepend ( const QByteArray & ba )
//[2]QByteArray & prepend ( const char * str )
//[3]QByteArray & prepend ( const char * str, int len )
//[4]QByteArray & prepend ( char ch )

HB_FUNC_STATIC( QBYTEARRAY_PREPEND )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArray_prepend1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QByteArray_prepend2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QByteArray_prepend3();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QByteArray_prepend4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void push_back ( const QByteArray & other )
$internalMethod=|void|push_back,push_back1|const QByteArray &

$prototype=void push_back ( const char * str )
$internalMethod=|void|push_back,push_back2|const char *

$prototype=void push_back ( char ch )
$internalMethod=|void|push_back,push_back3|char

// TODO: revisar implementacao dos metodos [2] vs [3]
//[1]void push_back ( const QByteArray & other )
//[2]void push_back ( const char * str )
//[3]void push_back ( char ch )

HB_FUNC_STATIC( QBYTEARRAY_PUSH_BACK )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArray_push_back1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QByteArray_push_back2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QByteArray_push_back3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void push_front ( const QByteArray & other )
$internalMethod=|void|push_front,push_front1|const QByteArray &

$prototype=void push_front ( const char * str )
$internalMethod=|void|push_front,push_front2|const char *

$prototype=void push_front ( char ch )
$internalMethod=|void|push_front,push_front3|char

%% TODO: revisar implementacao dos metodos [2] vs [3]
//[1]void push_front ( const QByteArray & other )
//[2]void push_front ( const char * str )
//[3]void push_front ( char ch )

HB_FUNC_STATIC( QBYTEARRAY_PUSH_FRONT )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArray_push_front1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QByteArray_push_front2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QByteArray_push_front3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QByteArray & remove ( int pos, int len )
$method=|QByteArray &|remove|int,int

$prototype=QByteArray repeated ( int times ) const
$method=|QByteArray|repeated|int

$prototype=QByteArray & replace ( int pos, int len, const QByteArray & after )
$method=|QByteArray &|replace,replace1|int,int,const QByteArray &

$prototype=QByteArray & replace ( int pos, int len, const char * after )
$method=|QByteArray &|replace,replace2|int,int,const char *

$prototype=QByteArray & replace ( int pos, int len, const char * after, int alen )
$method=|QByteArray &|replace,replace3|int,int,const char *,int

$prototype=QByteArray & replace ( const QByteArray & before, const QByteArray & after )
$method=|QByteArray &|replace,replace4|const QByteArray &,const QByteArray &

$prototype=QByteArray & replace ( const char * before, const QByteArray & after )
$method=|QByteArray &|replace,replace5|const char *,const QByteArray &

$prototype=QByteArray & replace ( const char * before, int bsize, const char * after, int asize )
$method=|QByteArray &|replace,replace6|const char *,int,const char *,int

$prototype=QByteArray & replace ( const QByteArray & before, const char * after )
$method=|QByteArray &|replace,replace7|const QByteArray &,const char *

$prototype=QByteArray & replace ( const QString & before, const QByteArray & after )
$method=|QByteArray &|replace,replace8|const QString &,const QByteArray &

$prototype=QByteArray & replace ( const QString & before, const char * after )
$method=|QByteArray &|replace,replace9|const QString &,const char *

$prototype=QByteArray & replace ( const char * before, const char * after )
$method=|QByteArray &|replace,replace10|const char *,const char *

$prototype=QByteArray & replace ( char before, const QByteArray & after )
$method=|QByteArray &|replace,replace11|char,const QByteArray &

$prototype=QByteArray & replace ( char before, const QString & after )
$method=|QByteArray &|replace,replace12|char,const QString &

$prototype=QByteArray & replace ( char before, const char * after )
$method=|QByteArray &|replace,replace13|char,const char *

$prototype=QByteArray & replace ( char before, char after )
$method=|QByteArray &|replace,replace14|char,char

%% TODO: resolver conflitos
//[01]QByteArray & replace ( int pos, int len, const QByteArray & after )
//[02]QByteArray & replace ( int pos, int len, const char * after )
//[03]QByteArray & replace ( int pos, int len, const char * after, int alen )
//[04]QByteArray & replace ( const QByteArray & before, const QByteArray & after )
//[05]QByteArray & replace ( const char * before, const QByteArray & after )
//[06]QByteArray & replace ( const char * before, int bsize, const char * after, int asize )
//[07]QByteArray & replace ( const QByteArray & before, const char * after )
//[08]QByteArray & replace ( const QString & before, const QByteArray & after )
//[09]QByteArray & replace ( const QString & before, const char * after )
//[10]QByteArray & replace ( const char * before, const char * after )
//[11]QByteArray & replace ( char before, const QByteArray & after )
//[12]QByteArray & replace ( char before, const QString & after )
//[13]QByteArray & replace ( char before, const char * after )
//[14]QByteArray & replace ( char before, char after )

HB_FUNC_STATIC( QBYTEARRAY_REPLACE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQBYTEARRAY(3) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISCHAR(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE3 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE4 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE5 );
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE6 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE7 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE8 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE9 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE10 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE11 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE12 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE13 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE14 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void reserve ( int size )
$method=|void|reserve|int

$prototype=void resize ( int size )
$method=|void|resize|int

$prototype=QByteArray right ( int len ) const
$method=|QByteArray|right|int

$prototype=QByteArray rightJustified ( int width, char fill = ' ', bool truncate = false ) const
$method=|QByteArray|rightJustified|int,char=' ',bool=false

$prototype=QByteArray & setNum ( int n, int base = 10 )
$method=|QByteArray &|setNum,setNum1|int,int=10

$prototype=QByteArray & setNum ( uint n, int base = 10 )
$method=|QByteArray &|setNum,setNum2|uint,int=10

$prototype=QByteArray & setNum ( short n, int base = 10 )
$method=|QByteArray &|setNum,setNum3|short,int=10

$prototype=QByteArray & setNum ( ushort n, int base = 10 )
$method=|QByteArray &|setNum,setNum4|ushort,int=10

$prototype=QByteArray & setNum ( qlonglong n, int base = 10 )
$method=|QByteArray &|setNum,setNum5|qlonglong,int=10

$prototype=QByteArray & setNum ( qulonglong n, int base = 10 )
$method=|QByteArray &|setNum,setNum6|qulonglong,int=10

$prototype=QByteArray & setNum ( double n, char f = 'g', int prec = 6 )
$method=|QByteArray &|setNum,setNum7|double,char='g',int=6

$prototype=QByteArray & setNum ( float n, char f = 'g', int prec = 6 )
$method=|QByteArray &|setNum,setNum8|float,char='g',int=6

%% TODO: implementar(?) identificação de números inteiros e fracionários
//[1]QByteArray & setNum ( int n, int base = 10 )
//[2]QByteArray & setNum ( uint n, int base = 10 )
//[3]QByteArray & setNum ( short n, int base = 10 )
//[4]QByteArray & setNum ( ushort n, int base = 10 )
//[5]QByteArray & setNum ( qlonglong n, int base = 10 )
//[6]QByteArray & setNum ( qulonglong n, int base = 10 )
//[7]QByteArray & setNum ( double n, char f = 'g', int prec = 6 )
//[8]QByteArray & setNum ( float n, char f = 'g', int prec = 6 )

HB_FUNC_STATIC( QBYTEARRAY_SETNUM )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_SETNUM1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QByteArray & setRawData ( const char * data, uint size )
$method=|QByteArray &|setRawData|const char *,uint

$prototype=QByteArray simplified () const
$method=|QByteArray|simplified|

$prototype=int size () const
$method=|int|size|

$prototype=QList<QByteArray> split ( char sep ) const
$method=|QList<QByteArray>|split|char

$prototype=void squeeze ()
$method=|void|squeeze|

$prototype=bool startsWith ( const QByteArray & ba ) const
$internalMethod=|bool|startsWith,startsWith1|const QByteArray &

$prototype=bool startsWith ( const char * str ) const
$internalMethod=|bool|startsWith,startsWith2|const char *

$prototype=bool startsWith ( char ch ) const
$internalMethod=|bool|startsWith,startsWith3|char

// TODO: revisar implementacao [2] vs [3]
//[1]bool startsWith ( const QByteArray & ba ) const
//[2]bool startsWith ( const char * str ) const
//[3]bool startsWith ( char ch ) const

HB_FUNC_STATIC( QBYTEARRAY_STARTSWITH )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArray_startsWith1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QByteArray_startsWith2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QByteArray_startsWith3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QByteArray toBase64 () const
$method=|QByteArray|toBase64|

$prototype=double toDouble ( bool * ok = 0 ) const
$method=|double|toDouble|bool *=0

$prototype=float toFloat ( bool * ok = 0 ) const
%% TODO: implementar parametro opcional
$method=|float|toFloat|bool *=0

$prototype=QByteArray toHex () const
$method=|QByteArray|toHex|

$prototype=int toInt ( bool * ok = 0, int base = 10 ) const
%% TODO: implementar parametro opcional
$method=|int|toInt|bool *=0,int=10

$prototype=long toLong ( bool * ok = 0, int base = 10 ) const
%% TODO: implementar parametro opcional
$method=|long|toLong|bool *=0,int=10

$prototype=qlonglong toLongLong ( bool * ok = 0, int base = 10 ) const
%% TODO: implementar parametro opcional
$method=|qlonglong|toLongLong|bool *=0,int=10

$prototype=QByteArray toLower () const
$method=|QByteArray|toLower|

$prototype=QByteArray toPercentEncoding ( const QByteArray & exclude = QByteArray(), const QByteArray & include = QByteArray(), char percent = '%' ) const
$method=|QByteArray|toPercentEncoding|const QByteArray &=QByteArray(),const QByteArray &=QByteArray(),char='%'

$prototype=short toShort ( bool * ok = 0, int base = 10 ) const
$method=|short|toShort|bool *=0,int=10

$prototype=uint toUInt ( bool * ok = 0, int base = 10 ) const
$method=|uint|toUInt|bool *=0,int=10

$prototype=ulong toULong ( bool * ok = 0, int base = 10 ) const
$method=|ulong|toULong|bool *=0,int=10

$prototype=qulonglong toULongLong ( bool * ok = 0, int base = 10 ) const
$method=|qulonglong|toULongLong|bool *=0,int=10

$prototype=ushort toUShort ( bool * ok = 0, int base = 10 ) const
$method=|ushort|toUShort|bool *=0,int=10

$prototype=QByteArray toUpper () const
$method=|QByteArray|toUpper|

$prototype=QByteArray trimmed () const
$method=|QByteArray|trimmed|

$prototype=void truncate ( int pos )
$method=|void|truncate|int

$prototype=static QByteArray fromBase64 ( const QByteArray & base64 )
$staticMethod=|QByteArray|fromBase64|const QByteArray &

$prototype=static QByteArray fromHex ( const QByteArray & hexEncoded )
$staticMethod=|QByteArray|fromHex|const QByteArray &

$prototype=static QByteArray fromPercentEncoding ( const QByteArray & input, char percent = '%' )
HB_FUNC_STATIC( QBYTEARRAY_FROMPERCENTENCODING )
{
  if( ISQBYTEARRAY(1) && (ISNUM(2)||ISCHAR(2)||ISNIL(2)) )
  {
    char par2 = ISNIL(2)? 37 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
    QByteArray * ptr = new QByteArray( QByteArray::fromPercentEncoding ( *PQBYTEARRAY(1), par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QByteArray fromRawData ( const char * data, int size )
$staticMethod=|QByteArray|fromRawData|const char *,int

$prototype=static QByteArray number ( int n, int base = 10 )
HB_FUNC_STATIC( QBYTEARRAY_NUMBER1 )
{
  if( ISNUM(1) && ISOPTNUM(2) )
  {
    QByteArray * ptr = new QByteArray( QByteArray::number ( PINT(1), OPINT(2,10) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QByteArray number ( uint n, int base = 10 )
HB_FUNC_STATIC( QBYTEARRAY_NUMBER2 )
{
  if( ISNUM(1) && ISOPTNUM(2) )
  {
    QByteArray * ptr = new QByteArray( QByteArray::number ( (uint) hb_parni(1), OPINT(2,10) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QByteArray number ( qlonglong n, int base = 10 )
HB_FUNC_STATIC( QBYTEARRAY_NUMBER3 )
{
  if( ISNUM(1) && ISOPTNUM(2) )
  {
    qlonglong par1 = hb_parnl(1);
    QByteArray * ptr = new QByteArray( QByteArray::number ( par1, OPINT(2,10) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QByteArray number ( qulonglong n, int base = 10 )
HB_FUNC_STATIC( QBYTEARRAY_NUMBER4 )
{
  if( ISNUM(1) && ISOPTNUM(2) )
  {
    qulonglong par1 = hb_parnl(1);
    QByteArray * ptr = new QByteArray( QByteArray::number ( par1, OPINT(2,10) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QByteArray number ( double n, char f = 'g', int prec = 6 )
HB_FUNC_STATIC( QBYTEARRAY_NUMBER5 )
{
  if( ISNUM(1) && (ISNUM(2)||ISCHAR(2)||ISNIL(2)) && ISOPTNUM(3) )
  {
    char par2 = ISNIL(2)? 103 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
    QByteArray * ptr = new QByteArray( QByteArray::number ( PDOUBLE(1), par2, OPINT(3,6) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

// TODO: resolver conflitos
//[1]static QByteArray number ( int n, int base = 10 )
//[2]static QByteArray number ( uint n, int base = 10 )
//[3]static QByteArray number ( qlonglong n, int base = 10 )
//[4]static QByteArray number ( qulonglong n, int base = 10 )
//[5]static QByteArray number ( double n, char f = 'g', int prec = 6 )

HB_FUNC_STATIC( QBYTEARRAY_NUMBER )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_NUMBER1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_NUMBER2 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_NUMBER3 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_NUMBER4 );
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && (ISNUM(2)||ISCHAR(2)||ISNIL(2)) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_NUMBER5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
