# Copyright 2023 Certified CoderZ
# Author: certifiedcoderz@gmail.com (Certified CoderZ)
# License GNU General Public License v3.0
# Description: BiZ9 Framework ScriptZ : BiZ9 Framework Git Commit
echo "#################"
echo "BiZ9 Framework GitHub Commit"
echo "#################"
INCREMENT_VERSION ()
{
    declare -a part=( ${1//\./ } )
    declare    new
    declare -i carry=1

    for (( CNTR=${#part[@]}-1; CNTR>=0; CNTR-=1 )); do
        len=${#part[CNTR]}
        new=$((part[CNTR]+carry))
        [ ${#new} -gt $len ] && carry=1 || carry=0
        [ $CNTR -gt 0 ] && part[CNTR]=${new: -len} || part[CNTR]=${new}
    done
    new="${part[*]}"
    echo -e "${new// /.}"
}
#prod-start
echo "Enter Framework Tool: [cms, core, docz, mobile, scriptz, service, server, test, website, vendor, vendor-payment]"
read app_type
echo "Enter Branch: [unstable, testing, stable]"
read branch_dir
echo 'Enter commit noteZ:'
read commit_notes
#prod-end
##test-start##
: '
app_type='website'
branch_dir='unstable'
commit_notes="Framework Update $(date +%F@%H:%M)"
'
##test-end##
#cms
if [ "${app_type}" = "cms" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_CMS_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_CMS_VERSION);
    sed -i "s/BIZ9_CMS_VERSION=.*/BIZ9_CMS_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_CMS_VERSION=.*/BIZ9_CMS_VERSION='${BIZ9_VERSION_NEW}'/" app.js
    git add -A .
    git commit -m  "${commit_notes}"
    echo "Tool: BiZ9-CMS";
    echo "Version: ${BIZ9_CMS_VERSION}";
    echo "Repo URL:${REPO_URL}"
    echo "BIZ9-CMS NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#core
if [ "${app_type}" = "core" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_CORE_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_CORE_VERSION);
    sed -i "s/BIZ9_CORE_VERSION=.*/BIZ9_CORE_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    git add -A .
    git commit -m  "${commit_notes}"
    echo "Tool: BiZ9-CORE";
    echo "Version: ${BIZ9_CORE_VERSION}";
    echo "Repo URL:${REPO_URL}"
    echo "BIZ9-Core NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#docz
if [ "${app_type}" = "docz" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_DOCZ_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_DOCZ_VERSION);
    sed -i "s/BIZ9_DOCZ_VERSION=.*/BIZ9_DOCZ_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    git add -A .
    git commit -m  "${commit_notes}"
    echo "Tool: BiZ9-DocZ";
    echo "Version: ${BIZ9_DOCZ_VERSION}";
    echo "Repo URL:${REPO_URL}"
    echo "BIZ9-DocZ NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#mobile
if [ "${app_type}" = "mobile" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_MOBILE_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_MOBILE_VERSION);
    sed -i "s/BIZ9_MOBILE_VERSION=.*/BIZ9_MOBILE_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_MOBILE_VERSION=.*/BIZ9_MOBILE_VERSION='${BIZ9_VERSION_NEW}'/" www/scripts/biz9-mobile/scriptz/config.js
    git add -A .
    git commit -m  "${commit_notes}"
    echo "Tool: BiZ9-DocZ";
    echo "Version: ${BIZ9_MOBILE_VERSION}";
    echo "Repo URL:${REPO_URL}"
    echo "BIZ9-Mobile NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#scriptz
if [ "${app_type}" = "scriptz" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_SCRIPTZ_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_SCRIPTZ_VERSION);
    sed -i "s/BIZ9_SCRIPTZ_VERSION=.*/BIZ9_SCRIPTZ_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    git add -A .
    git commit -m  "${commit_notes}"
    echo "Tool: BiZ9-ScriptZ";
    echo "Version: ${BIZ9_SCRIPTZ_VERSION}";
    echo "Repo URL:${REPO_URL}"
    echo "BIZ9-ScriptZ NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#service
if [ "${app_type}" = "service" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_SERVICE_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_SERVICE_VERSION);
    sed -i "s/BIZ9_SERVICE_VERSION=.*/BIZ9_SERVICE_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_SERVICE_VERSION=.*/BIZ9_SERVICE_VERSION='${BIZ9_VERSION_NEW}'/" app.js
    git add -A .
    git commit -m  "${commit_notes}"
    echo "Tool: BiZ9-Service";
    echo "Version: ${BIZ9_SERVICE_VERSION}";
    echo "Repo URL:${REPO_URL}"
    echo "BIZ9-Service NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#test
if [ "${app_type}" = "test" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_TEST_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_TEST_VERSION);
    sed -i "s/BIZ9_TEST_VERSION=.*/BIZ9_TEST_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    git add -A .
    git commit -m  "${commit_notes}"
    echo "Tool: BiZ9-Service";
    echo "Version: ${BIZ9_TEST_VERSION}";
    echo "Repo URL:${REPO_URL}"
    echo "BIZ9-Test NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#website
if [ "${app_type}" = "website" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_WEBSITE_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_WEBSITE_VERSION);
    sed -i "s/BIZ9_WEBSITE_VERSION=.*/BIZ9_WEBSITE_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_WEBSITE_VERSION=.*/BIZ9_WEBSITE_VERSION='${BIZ9_VERSION_NEW}'/" app.js
    git add -A .
    git commit -m  "${commit_notes}"
    echo "Tool: BiZ9-Website";
    echo "Version: ${BIZ9_WEBSITE_VERSION}";
    echo "Repo URL:${REPO_URL}"
    echo "BIZ9-Website NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#server
if [ "${app_type}" = "server" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_SERVER_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_SERVER_VERSION);
    sed -i "s/BIZ9_SERVER_VERSION=.*/BIZ9_SERVER_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_SERVER_VERSION=.*/BIZ9_SERVER_VERSION='${BIZ9_VERSION_NEW}'/" app.js
    git add -A .
    git commit -m  "${commit_notes}"
    echo "Tool: BiZ9-Server";
    echo "Version: ${BIZ9_SERVER_VERSION}";
    echo "Repo URL:${REPO_URL}"
    echo "BIZ9-Website NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#vendor
if [ "${app_type}" = "vendor" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_VENDOR_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_VENDOR_VERSION);
    sed -i "s/BIZ9_VENDOR_VERSION=.*/BIZ9_VENDOR_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_VENDOR_VERSION=.*/BIZ9_VENDOR_VERSION='${BIZ9_VERSION_NEW}'/" app.js
    git add -A .
    git commit -m  "${commit_notes}"
    echo "Tool: BiZ9-Vendor";
    echo "Version: ${BIZ9_VENDOR_VERSION}";
    echo "Repo URL:${REPO_URL}"
    echo "BIZ9-Vendor NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
#vendor-payment
if [ "${app_type}" = "vendor-payment" ]; then
    G_PROJECT_DIR=${BIZ9_HOME}/${BIZ9_VENDOR_PAYMENT_TITLE,,}/src/${branch_dir}
    cd ${G_PROJECT_DIR}
    echo ".biz9_backup" > .gitignore
    source .biz9_config.sh
    BIZ9_VERSION_NEW=$(INCREMENT_VERSION $BIZ9_VENDOR_PAYMENT_VERSION);
    sed -i "s/BIZ9_VENDOR_PAYMENT_VERSION=.*/BIZ9_VENDOR_PAYMENT_VERSION='${BIZ9_VERSION_NEW}'/" .biz9_config.sh
    sed -i "s/BIZ9_VENDOR_PAYMENT_VERSION=.*/BIZ9_VENDOR_PAYMENT_VERSION='${BIZ9_VERSION_NEW}'/" app.js
    git add -A .
    git commit -m  "${commit_notes}"
    echo "Tool: BiZ9-Vendor-Payment";
    echo "Version: ${BIZ9_VENDOR_PAYMENT_VERSION}";
    echo "Repo URL:${REPO_URL}"
    echo "BIZ9-Vendor-Payment NEW VERSION : ${BIZ9_VERSION_NEW}"
fi
bash ./scriptz/dq_footer.sh
exit
