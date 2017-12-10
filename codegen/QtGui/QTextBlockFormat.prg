$header

#include "hbclass.ch"

CLASS QTextBlockFormat INHERIT QTextFormat

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setAlignment
   METHOD alignment
   METHOD setTopMargin
   METHOD topMargin
   METHOD setBottomMargin
   METHOD bottomMargin
   METHOD setLeftMargin
   METHOD leftMargin
   METHOD setRightMargin
   METHOD rightMargin
   METHOD setTextIndent
   METHOD textIndent
   METHOD setIndent
   METHOD indent
   METHOD setLineHeight
   METHOD lineHeight
   METHOD lineHeightType
   METHOD setNonBreakableLines
   METHOD nonBreakableLines
   METHOD setPageBreakPolicy
   METHOD pageBreakPolicy

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextBlockFormat()
$constructor=|new|

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=void setAlignment(Qt::Alignment alignment)
$method=|void|setAlignment|Qt::Alignment

$prototype=Qt::Alignment alignment() const
$method=|Qt::Alignment|alignment|

$prototype=void setTopMargin(qreal margin)
$method=|void|setTopMargin|qreal

$prototype=qreal topMargin() const
$method=|qreal|topMargin|

$prototype=void setBottomMargin(qreal margin)
$method=|void|setBottomMargin|qreal

$prototype=qreal bottomMargin() const
$method=|qreal|bottomMargin|

$prototype=void setLeftMargin(qreal margin)
$method=|void|setLeftMargin|qreal

$prototype=qreal leftMargin() const
$method=|qreal|leftMargin|

$prototype=void setRightMargin(qreal margin)
$method=|void|setRightMargin|qreal

$prototype=qreal rightMargin() const
$method=|qreal|rightMargin|

$prototype=void setTextIndent(qreal aindent)
$method=|void|setTextIndent|qreal

$prototype=qreal textIndent() const
$method=|qreal|textIndent|

$prototype=void setIndent(int indent)
$method=|void|setIndent|int

$prototype=int indent() const
$method=|int|indent|

$prototype=void setLineHeight(qreal height, int heightType)
$method=|void|setLineHeight|qreal,int

$prototype=qreal lineHeight(qreal scriptLineHeight, qreal scaling) const
$internalMethod=|qreal|lineHeight,lineHeight1|qreal,qreal

$prototype=qreal lineHeight() const
$internalMethod=|qreal|lineHeight,lineHeight2|

//[1]qreal lineHeight(qreal scriptLineHeight, qreal scaling) const
//[2]qreal lineHeight() const

HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LINEHEIGHT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextBlockFormat_lineHeight1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextBlockFormat_lineHeight2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int lineHeightType() const
$method=|int|lineHeightType|

$prototype=void setNonBreakableLines(bool b)
$method=|void|setNonBreakableLines|bool

$prototype=bool nonBreakableLines() const
$method=|bool|nonBreakableLines|

$prototype=void setPageBreakPolicy(PageBreakFlags flags)
$method=|void|setPageBreakPolicy|QTextBlockFormat::PageBreakFlags

$prototype=PageBreakFlags pageBreakPolicy() const
$method=|QTextBlockFormat::PageBreakFlags|pageBreakPolicy|

#pragma ENDDUMP
