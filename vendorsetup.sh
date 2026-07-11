# Revert some frameworks/native commits to fix refresh rate jankiness
echo "vendorsetup: Reverting some commits"
if [ -d "frameworks/native/.git" ]; then
echo "vendorsetup: Found frameworks/native"
(
    cd "frameworks/native"

    git apply ../../device/samsung/sm8550-common/0001-Revert-scheduler-refresh-rate-stuff.patch && \
        echo "vendorsetup: Reverted"
)
fi
echo "vendorsetup: Done"
