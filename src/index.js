/**
 * 
 * @param {string} ccySign 
 */
function tbpwRegx(ccySign) {
	return `\\${ccySign}\\w{6,20}\\${ccySign}`
}

/**
 * 
 * @param {string} content 
 * @returns {string}
 */
function getTBPass(content) {
	if (typeof content !== 'string') return ""

	const ccyArray = content.match(/\p{Sc}/gu)

	// If there is no currency symbol in the text
	if (!ccyArray || ccyArray.length < 1) return ""

	const ccyList = Array.from(new Set(ccyArray))
	const regxListStr = ccyList.map(regx => tbpwRegx(regx)).join("|")

	const tbpassRegx = new RegExp(regxListStr, 'g')
	const tbpassList = content.match(tbpassRegx)

	const isVaildArray = Array.isArray(tbpassList) && typeof tbpassList[0] === 'string' && tbpassList[0].length > 2

	return isVaildArray ? tbpassList.join(",") : ""
}

/**
 * 
 * @param {string} content 
 * @returns {boolean}
 */
function isTBPass(content) {
  return getTBPass(content) === "" ? false : true
}


module.exports = {
  isTBPass,
  getTBPass
}