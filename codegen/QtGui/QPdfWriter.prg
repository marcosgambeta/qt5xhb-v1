$header

#include "hbclass.ch"

CLASS QPdfWriter INHERIT QObject,QPagedPaintDevice

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD title
   METHOD setTitle
   METHOD creator
   METHOD setCreator
   METHOD newPage
   METHOD setPageSize
   METHOD setPageSizeMM
   METHOD resolution
   METHOD setResolution

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QPdfWriter(const QString & filename)
$InternalConstructor=|new1|const QString &

$prototype=explicit QPdfWriter(QIODevice * device)
$InternalConstructor=|new2|QIODevice *

//[1]explicit QPdfWriter(const QString & filename)
//[2]explicit QPdfWriter(QIODevice * device)

HB_FUNC_STATIC( QPDFWRITER_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QPdfWriter_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QPdfWriter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString title() const
$method=|QString|title|

$prototype=void setTitle(const QString & title)
$method=|void|setTitle|const QString &

$prototype=QString creator() const
$method=|QString|creator|

$prototype=void setCreator(const QString & creator)
$method=|void|setCreator|const QString &

$prototype=bool newPage()
$method=|bool|newPage|

$prototype=void setPageSize(PageSize size)
$method=|void|setPageSize|QPagedPaintDevice::PageSize

$prototype=void setPageSizeMM(const QSizeF & size)
$method=|void|setPageSizeMM|const QSizeF &

$prototype=int resolution() const
$method=|int|resolution|

$prototype=void setResolution(int resolution)
$method=|void|setResolution|int

#pragma ENDDUMP
