/**
 * Upload file
 *@param  {String}   element Element selector
 * @param  {String}  localPath local path to file
 * @param  {Function} done Function to execute when finished
 * @uses protocol/file
 */
module.exports = (localPath,element) => {
    browser.chooseFile(element,localPath);
};
