Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793833617;
	b=1rdwsJtEJuLsthl8LMonvYBBzfBlS748eBczobpDQKB0twT2+qFECG01d95+fPpeEc6x
	 U5xm3Yfjagw6WrNO28ieiVp2de1yV72FjS4yctIkYBDI4xCakoBjOKyEotfrW9pvHITLE
	 YqOxHmlqgwdeDv+KQsGQCTcPDhC9zQnZ6i9DR10iVsLK2k5EFekDasg/AgVJXGJCYvOdp
	 /7gj7cvxBtE8AR5cBrOpdEEl65fKdbWKcpb6Pm3VX+wpXISKOUktta5v+jnw2DHUMBiSb
	 4KlSJS/UvUqUdx3ucVBlNEvw8aBq9bSHa5QJBS6Cbpg/eUiAQw09XWpk5QvwFKqasNA==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793833617;
	h=Received:Delivered-To:Received:DMARC-Filter:Received:Date:From:To:
	 Subject:Message-ID:MIME-Version:Content-Type:Content-Disposition:
	 X-Envelope-From;
	bh=EH+SR+Z66z5WDMDz7qhdYADQu0LpJgjZZX9R72VSVPk=;
	b=Aax/YVNIEWW1IRN4NJiAZr+CJfb5vBq8wMFc/Dnf0t4amn4xkaX9CrsAFFqxnqyTYhsC
	 0ffQTva/0+m8pwcXQHy750pRnCnSNAz4YEzRPhDKVtOkQEomYC35ceDDXTV4Z1wD2WJQf
	 huNuFPDUp6iGuaOZgH8lV8Bjo1RCQ4IkkY6APSW1Z14iNWfinhc0h1GV9KM71/4cw0e1k
	 U6DZq5Odmoc377JMOsUJmoM/QD/A0fxFj6+0+Vxr0CORAx+1YFa2sQCpqZ2vaeFELROeg
	 mY9aA30aJ/iv5p60uTS/+RETazIKcGaJPJwI9ZnujakWB9cFHIoTp7E7FQsREuJqOVg==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB00A606A326
	for <keys@linux.kernel.org>; Wed,  4 Nov 2026 23:06:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix)
	id 7CF2B1F00A16; Wed,  4 Nov 2026 23:06:56 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=63.250.43.113
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1793833616;
	b=aPqn8rue/OPVjuhYh2ra48xz26ii6OcU7NZKlnocYdU/UQYJ2QdpBIFHxOVKnKJ6CA66
	 UeLAuauuLOFfh8HK8EU8w5foDM3FDnVoHvq9ImeGPyvoa7UareT/6uZt5lDKFSvr5bL9a
	 d/9NDaNP0/pUw54SjHHIPXR6YGUgk6vrgsTGi2oHLkipy8qFHVHBefnWT0vvcRp1Fjrv1
	 tHxLSamct4mcotxtTcPwhOybA/OjQ46yxLyY6aANaa+F5g4ogTs0XxNCsgUDynfPDlayL
	 rboaGolXDrRWBZv+utcoubi2eMCQVQH+0yAmP9BOPJR/BpsLLR4CKyeZ8Xq4o3M1x0g==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793833616;
	h=DMARC-Filter:Received:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type:Content-Disposition:X-Envelope-From;
	bh=EH+SR+Z66z5WDMDz7qhdYADQu0LpJgjZZX9R72VSVPk=;
	b=LSWK6lijxVMOEYvdZzSKXlFMmvpDHgc/YMND658do/7klc2ph7kDMF9Izr50TPtS4QTj
	 e/aUERNRsbbF4ds0PqW8a+BkoVZR0PBNbQ+V0Sg0udYV/KGow8OxR/dEC4dwRef8/X75e
	 wwLBWAWvX+wtUCf+zVb36i4K/BndwXNLls3qFICwN+eWmGYq6g26O+Lyu4LwU9y4t7/2B
	 eAcjJ37o/hOTkuBA6+4KKUfPDHtFGqe3gmNPwaCLHfPlSclOTKTcCL8j9mM/sRiIBIyww
	 gGrlGt+LoGFecPIFArz9Dm5HJ6PeXlowShRWbMi6wvVKM7Dr2AvQrgB4K7DcEWuLXJQ==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	dmarc=none header.from=effective-light.com;
	spf=pass smtp.mailfrom=effective-light.com;
	arc=none smtp.remote-ip=63.250.43.113
Received: from out-2uec-a113.jellyfish.systems (out-2uec-a113.jellyfish.systems [63.250.43.113])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 7B9441F000C1
	for <keys@kernel.org>; Wed,  4 Nov 2026 23:06:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.kernel.org 7B9441F000C1
Authentication-Results: smtp.kernel.org; dmarc=none (p=none dis=none) header.from=effective-light.com
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=effective-light.com
Received: from mail.privateemail.com (unknown [174.89.145.246])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.privateemail.com (Postfix) with ESMTPSA id 4jKgzp1Fjdz8sWN
	for <keys@kernel.org>; Wed, 04 Nov 2026 23:06:29 +0000 (UTC)
Date: Wed, 4 Nov 2026 18:06:26 -0500
From: Hamza Mahfooz <someguy@effective-light.com>
To: keys@kernel.org
Subject: PGP Key for Hamza Mahfooz
Message-ID: <auu6ctSLPlphkRab@hal-station.localdomain>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mzhgy2XVPYLGVyzU"
Content-Disposition: inline
X-Envelope-From: someguy@effective-light.com

--mzhgy2XVPYLGVyzU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

You can find my signed PGP key attached to this email.

BR,
Hamza

--mzhgy2XVPYLGVyzU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=hamza-signed-key.asc

-----BEGIN PGP PUBLIC KEY BLOCK-----

mQINBGKg4DoBEACVH4Ft2cVK8XKRk+S9AMyJrnrI/TWUCIh4IOHlmbUvVv1fy+3R
S5F0GbWd9Ju6t360xTdNfbeLiBHzFOfDEruEO6t8/WnGauXAyEqwhQeZ2t3y/nPa
SssRsYOJBikB6tXJZ0lWcmnedxCS3FUZCUixP1gR1sVKl9T35NzghhbhLr+pAZc+
j5CNWnT9zuSuN5H8VCMbArRbxEetW2l3Ga7D8FkDujSv9owo5vx/4QpOTbH0lq4P
CgakvRz3KwYBWFotTDSKS/SVjzvKeqrwAbyekZFMzpT4P58wRpmjjVnWs6O/Fimj
BM5PSJZm/LWRf6/iYSXGbZECF/1xvdItrlMyWUeXvylxGazLgHEtDjaLTuPbhO45
UWQXT3t85vaacOdlaYDLxBeRziFYvL5lOemD95xiMjY9F/tXBh18tvhOcOCqSJDn
ka1I6d9kG6nlc82Dxqg8dFYS0tmgKeckw38Do8KQndTat4IoP1L3O42HH2LupQS2
+SAY7Ctlr1vWDz1qTb9OCcGseJH4VZK/v36fEN0XIOR/OpTDZOLZ0Zxcbr4N5Ht3
ILuci8LxFzkUpyRkdjgRMJrRCytFjhoIXEqcwT5yqnNpJFZz6/DbD/Jgcoh5xoOt
y+s3Hz+DiDqLJUtmUlPALzqkePNRJIGVVCzyzSfUtjqVzLPrwp+D2lRj/wARAQAB
tDBIYW16YSBNYWhmb296IDxoYW16YW1haGZvb3pAbGludXgubWljcm9zb2Z0LmNv
bT6JAlcEEwEIAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AWIQSEXQRk
DnZMG88udls9Z5fW7m/K4gUCat/WpgUJEaT37AAKCRA9Z5fW7m/K4uyXD/4n/pP2
/5J9+/OWmlUub26Ut24rQqLEgxSAp69ARqAn9/EM1y1NZYNRTnUeitZO7kHWK2FX
ktHo343p2JJd07JOqK97eLLLurBabrKhYopKIfyTbk9NpZ4UEzf9PYc8xc7weFev
uVHEQMxs4vl/WkutyPX6pyFmlLK5TL2bcC3lz/XhcZbhUp/3O+HcB1+mHDyhq/8p
9MuSUhw6koa0Wq+7cGfpx4h16jN/Ovp/gi6ovgFklhq4wDPpmoKoUuCse5lzn7Xc
jrSE9Yd7+BY9Wjdc7mAMtQBRsyfY0+87H8DSvZYauywEFPKGIJFDnrj7qKpvZ2br
bvmf+DyV8lzR+r+cr2wbSx6b78fsgUw9m4aT5haslPzkT1Rh231FnPsMZwAPGL6w
DB+TNenOclwEMQB0ycOjCZyT/QILD8zjB6qxeJ66D2/CcjMLl2Hrj3dBXxMQHTMi
DHuJ9vFowpTsKvRHFJQmeGB4z74SPnIzBYD9LfunWy8vIS+81TsBklQ0yQIHBlqj
3THPSfxZ9w4EQO8fdGByji70RPwaKGOVGszqhnyclwBY+nVZ7RWCBYmp3Mn4Q0oh
iRNwH2pHTkGDCEsfPwFiLi1IdqxIZV/vNAzjDwWOKUsaaAvDd40jXnKJ1FE643NE
AUqVCrPig0cPK4RGFkUCLLd9wqpuS+daxet3hIkCMwQQAQoAHRYhBNgPSa9Kbvmq
nCosLZhAh9T+arNLBQJq6Dh4AAoJEJhAh9T+arNLryMQAM4elqxBixg6kl7I2FcZ
efZKOqwMt5F3dLo4MOJrrGku8An/Ao1xUh/tBXg7eEZWXZJjjtqKsQ7NT+gvtECw
TjGAR/hyLWAmu1MeLztJtVhDA4U/d3fiR514dHF+TDwpUMRlcRn6LAa6njfOBfSC
u91vvAVfFwAY0S4px2qRga36zktsCDBQRNdtBse2/Mj/mvi8KqK2bn6x3LU6CqYn
W4iJR8ji6wE8HaDIV5zuON06alGCHfSQgKl/hUOdch0l6gxUe22xyKT1k1SEMyVK
ObvZiIj56X0NDVlUrihSpjPrUk7U9ty/C38yZ6IyZ6Vrly0ulYrA7LqnGtV6Z1hM
vO475fgtN8ZgWhOPhP1BbmGH2GkpWOiQrieaMIPkIhigq9h5yToP2UIU0cS9dMqJ
j6AGyC40Jok9ad0+Cdz7js9b7NpGzclYEFj5IDgO1ieVnGBX6dHqXnmMmxkIzaqi
0rrVDQrfAO9KEjmrIinF6hAOO8pE9qcSWHQx+HfA8VAeLof8R4VtIgnbZgAS2J24
mjAtgvCrpOrpWbfvWqOOaHzF9RLpn0WpN1hS5EELnvwGVHpAxRFr5q50Pue4W7xV
0Gwphui9xY8YZkPvRaPdW0eBccFcBxy+uDv6GisUYZkIiMvHHn9PrzqCR4UCwrXx
vJy7dz4/p1jOQr92Kaq05SwAtCtIYW16YSBNYWhmb296IDxzb21lZ3V5QGVmZmVj
dGl2ZS1saWdodC5jb20+iQJUBBMBCgA+AhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4B
AheAFiEEhF0EZA52TBvPLnZbPWeX1u5vyuIFAmrf1qYFCRGk9+wACgkQPWeX1u5v
yuLKDg//Zt1O4T8ZWZZoxN2X4wIsmByX2TU+Eam3T5tv5Vqt7vC+ENqh4qJV+dpV
WxEcJYHKLbmADsnPsQCm8hEJ1u7JMCGaAcBE6YQlJVpK3cYwPOXT5MqikrsrOaR6
XuTXJqoPPjvpqKHrDWNLmPi5hUOTjUS6TV/yrAHrjzwrJhBpgPze6iHz7JrL8eev
ZWtMo08uoIp+mGnsiBjTptlyug/AyA7v+gq1jQ64BWACMLS6odY/VL54cMQi4/2o
DSaD1h3zTIjjWOyh1LqeyAakRsvdzw4jJdYk0KJhZZOdSc2wupWjo/bIF/n2y1Mw
d/bsHpfjmx5ljuMXL7gqN+iqNrTHFs9nPcc2o5iFG5SkhDaFSuS6l0gCmKJrKymc
/4cTIdwvtHhNGvLTIiHj196Fg9k0h+pwieBYdlO6hOvMPLsaK29tqAVU8IK3T6ky
bQAUCmLxE7CYHILvxdGCEklvtLnauidIs1XxIsrLvMleN5FmWpM+TxiY0UFXDuNZ
71ZvCKyumEo6M2Q1SUv68YX3O5JSXzji6lBPFSHVi5f85FQaMqM8W8mhUOzMgImu
+Uml86oMD6RGyZWJaF/oLus2GVR+jktrjpFeIOvHP/hqLmZ/eypsoh/22dk6kejy
ejLNwmu4atwNklx/ZnN4oP8ddYoez5JR0Z+5Xiv+aZrvwBLg9XCJAjMEEAEKAB0W
IQTYD0mvSm75qpwqLC2YQIfU/mqzSwUCaug4eAAKCRCYQIfU/mqzS0l2D/9uWDkC
TYHt7Ra6lwY+bdisk73UlXuz8DZUtxp6/RwWNm4AOMF6mtchi7NANYBnt2lzkFPw
thTT56zKkz+EllWH9eLwpHUhE/QJUrGs1zMwAQXl6jun2XCUACnccltRuPkFnd90
ur8zneTgosCa2PH0iF71NfMa661ogrdK5YsKizsgnLdjrX2HFvEwcFuBY55p1KRW
wY6iE6xbR0up2PbcsRcSYh48G42Y5OTTCvpw/tLVaSRcIXbAQ28Jh1fNAsmIGuon
rbJZ6IPJRzRX8JaxPRltwzraWNc6pIkYtdZwqW1h2p1z10GsuavR72F10C0SSPDL
T/dcsl7tMuFdTIK2i4vlyEsvvmtgXu8XACSPURn3A/yhBbNF/LuJhDtJrabCE1Qx
I8jbC988/EG1Ak5euXfZWv9/VQH71p202cpuHmklWKdjbCiaYLu5PG/z3cmu1dwh
rQKNWXA1NqcZxVSXleD8kF8e2BwvGbF0R6UlHS0W3rg+BxbZyFa+SqH3/PZ+PYhV
+DylGO7mwn0x+zUYmeCZnJRs9Jp1543X2b3r87sXnXQk8e4z6FCPUa6A9G1ooCpg
wM9CKJCgeexohKQhdMcYGp9GTMd6bNdnHoT1sHaeboS1esqXnV1FMqyvSvIs9pj5
e9ampQ3UBNkmjoaPpZdefJ/r3sui4aY+KpW4RrQlSGFtemEgTWFoZm9veiA8aGFt
emEubWFoZm9vekBhbWQuY29tPokCVAQTAQgAPgIbAwULCQgHAgYVCgkICwIEFgID
AQIeAQIXgBYhBIRdBGQOdkwbzy52Wz1nl9bub8riBQJq39amBQkRpPfsAAoJED1n
l9bub8ri64gP/2YB3AdrXI+wqpoAAHd49y94CLPS7oHm5AbQAiET90d/Ab2wWg9a
UVIm+0JD44Cs6pUp+6WxDAsl7/B/9xkCqs9WJLayFxzjqiJbWj+eAEuloQjWik9T
H1/3GC8/pAFJTqkS6PZo9+nJgPvH2h9055q02WgMBUAEMPr6xJR9DB/JQuD4t9t8
JG9M/dwINbjx2ldugI8rmyJpMwDGGapdZ8UGZnu/lEj4o8V5cN/UkHdc0YeMdsq0
Y48UZ6m1XOXRgvh2gzBr4kB5gH+owT9SE7aEtF1OUkdJJ/XpF0aOcQY83EFqOQdb
JqtCnfaJIyI9Kp7iLEE8Vrplwr7tDMMZJwt31p0gvLg5WTFx6PvPXm3Amf9T5vHK
05++X5kXXzNgvafuJb7naZrAbAmPGrSDq0b6iaWIu481RaLWeRqyW6h0m0inVZFc
8RaBV9wEsj5eXf41AtcVRXx/XdGZZMmS470iCzfdsHU/3OXDhrLofqA+BkpA0K4G
RkApOCyfhi02djBnCWQGsuWlz71GjnsajQo6qSDPLSWhkK5R/ueRA290nNjWvQky
xfIg//bqxXQ4H+YeVv4boRpb1PwLpaKp/ZjvEm7QsFxEpnLbSMcwcvdL5kWNDs1Y
aNVVhaJ8uBJsqUMNMS1Bu4Tog29rKvodP4skhTkIG2EgEweByeHY50ywiQIzBBAB
CgAdFiEE2A9Jr0pu+aqcKiwtmECH1P5qs0sFAmroOHkACgkQmECH1P5qs0vi4g//
bd7j7/n5fhmUnLO7zMlBMe/ldJ6VLHoY0VcxWw/eIKvppHLOZdzFRS2p+BC+FB+G
eokQq5dCq6oLnEWc3xNZmUXhVaf4/sNUtAzRbExmDZFAcshaV7lYnlAi6ZLt3fUZ
OxV5aaE6dYsdjpUXVCBAtTgGFSzmVCwtyZUJ02/zi64ukc0pAS1enzxnI6Be+tOf
b4iMvT8V3TT4mPY7EwaISNPGi1hK7w8r+PU5J9+RGTlR+Zl/cQeJw3uwAEY5kaTA
XfkegykZQMdv2JhdkCBI8O1DAo0ztq2k1FRH6BLgdxBZFI1xGsJMUnwiphrYilP+
dgyklbqUWq27J+kI+SOWnSqndXP4M869D+GXO6qjNwhMh+DuC7bS/zHLu0M8eI9C
bud1oc7cUaFhvh0T8U7ySP5Z5DJ0WeZODEp9QLafCJT+07lLL7ryPfA4UwWYGs8s
8nkwkSqsgwkuyk23NXqQZMVZJ2wqXCBnAbHrzKkIXxnHbMvEUgW+h+fG/FCSE2+g
RNr7akjSRkDUSG3ESqdEoQ5sGsx3t4EomdaaUdIOir1zd52EOt1S10Mjpon0sly8
CK0nKPYzeUUYoNJ3t4OvSlK+RaeWe0nl+vYctYiJaw6Tr20OhEh2HkmCAJUDf0Vz
mAhRjKDZTwf0VDVT4GWg3iptnpuMnhkUkixVQGf1ZCu5Ag0EYqDgOgEQAK3ZnLFa
3eMK3T3SZ6/Rkm1Q56lkNe+aL7XcrhWZqaRxMyVXJIrXkTOLyo6vbqgPOfw4sJJu
V5aAc2P7GcqK582O+eNPw5PQdiIxlyr0Ywf/4k7tJuNEs0FMskX7COz8whQoeoo+
tmVBsmMhy269cFRF4S0460C8vPTI7MrvCp8ZrA/Te//A42GSPd7DskC3rIUcTlb3
dpoSgWkzIOyP9DaejZ1yWzz3Eb79UjgiEH923fONTiOd+C0Nq5xaPGSPFzEl/8AJ
nlhLSa1EDPUvO/LH8kfPw2rCFiBKAxXKqWWFcF2M6KZZOTlpx8sbg1CLgaPJXrFj
BDlN95Ig8RNrObbAUBP3uOzU0/RzHrfXgS5wJOd4QPk/L/2QaZNWI+qG7BIok4Oo
ype7DVTQWsazFm9STa4a0P4hQy5FWhe4aBF4QDxz6oMLs284Pn19iNqwX6310HIZ
cnA1JTzS66jdlhgX8Gv6TK10Q+dEQduLqKxOXnJO0aNi1TIGBaNoHhZdLryBderO
4DEVmwRghmM47v5Y03NbWgyzRscfIK3mEMPHxX/X7SBNgqnRXqvamCqiD1kw6ECr
k+r++fhqPvxdtm6KnKIucP7SvZ3FVVbsn5pbF2eX2zKgN+ejZiGiu9rpcnCQm6dB
3FnH3FHhXUwm9GYuwRfFxzSKaWaFqiGf5opvABEBAAGJAjwEGAEIACYCGwwWIQSE
XQRkDnZMG88udls9Z5fW7m/K4gUCat/JMAUJEaTqdgAKCRA9Z5fW7m/K4lheD/9I
YbHWiWqNYPP2TCDaLyEcPDFkQnJOgn8k4qbXxM4tj9f4X2+jwdzCTINUUr+mK1+w
hJg5GAFoY8UCvdh0hQlZkOLQmDK70gjnCNZM92bQCtAuGBdschRL5RHOrNFcWp+J
okL3KrUB6aVo+dUKoeCQChpFIvdu5uBhrGFrrNGbw6F6bLPQerO9ogF5w+O7nNm4
ez4WWMF7m5Wr7tzmgeQSYQi3aFc+2fNIANWwsgoWPy6DRz6XDvK7Bp1S8EMebKG9
p4+VMddd5NTnyRnkyVtwq7yVVrhA8s330P8Ay1qFQufxaZhPZh8FJAqW1gDBbIUn
pVBsFC/FF6QSIPXecipLJlVD05RHpn2rqA4NMxDDoD8AFzxWcQ5AV3RXBFGYkdte
lsfpPEJMEuj61qTnxE2XuniOq6fEyswUnJhegsr3T42LXK47XJ1eJB1lXgtrTFmU
JEboR50x/FHCe97e0EaVjM97toklcWWL79ZsbZHdSrp2zqKfTLAqKIt68eKfF4Qf
1hy2SQl9R/9HCtSlSdTdhRgwB23zQ0MDhf6HuTg10JCk7SEFgJ4+cRLwPZCJ37GN
pipkJ6lSZ7A2xvAZUFlXWnW9c7dOOiflGGWWulOWW/cRxUjg8Fk17hCVRP4bhH6M
1HuKp7pMzzfU8pJgyrnuHyjwBNc9eov4Mq5Pz6sYEA==
=d/UA
-----END PGP PUBLIC KEY BLOCK-----

--mzhgy2XVPYLGVyzU--
