/**
 * @name Hardcoded credentials
 * @description This query detects hardcoded credentials in code.
 * @kind problem
 * @tags security
 */
import javascript

from AssignmentExpr assign, Literal lit
where
  lit is StringLiteral and
  lit = "credentials"
select assign, "Hardcoded credentials detected."
