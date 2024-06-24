Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3376F22313
	for <keys@linux.kernel.org>; Mon, 24 Jun 2024 19:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719259180; cv=none; b=Aw2JkuyxgAUkfuCRiadlwjIq0R4l97ukmt+AwmYVLMipZHI7fJj95D4FsLfoH944Oh09BaVUqWLb9Z0JPjCzeN/JstBItLn5DEJwXfMGZg4kl6V6gd6yOm+0mVxIWuL2MV84Nle2wnP1A26Iegewbvk2Fjrnfw4VNUXUTaptUbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719259180; c=relaxed/simple;
	bh=WCf/glgaH53AKKmj8sdRubAT+WVja37EocZBad8wqMA=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:References; b=kihJNoGNm8XddgLZHc6IzbJO6HedxR5lI9CVEjSq0McvP5n39Gs+e1SPql4/J8/DXInYzFgSmw7iQlJzioe4YfGoS6qOa2+GkOTZorNgL50NMdai8vlHtK4dZBzaYHcw7QFtoplGbizjssDaRp0iQC1s8pqDyo9HpZFmC11M6Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=tz9qMEwi; arc=none smtp.client-ip=210.118.77.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="tz9qMEwi"
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20240624195936euoutp02acdc45c174fa0f0b705fd121b6316974~cCRyPCAyr0437504375euoutp02j
	for <keys@linux.kernel.org>; Mon, 24 Jun 2024 19:59:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20240624195936euoutp02acdc45c174fa0f0b705fd121b6316974~cCRyPCAyr0437504375euoutp02j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1719259176;
	bh=NQxjeDT6TbHVbSvdGa/vbMLJqNG6BhDnzL++f6EOWoI=;
	h=Date:From:To:Subject:References:From;
	b=tz9qMEwi81ttMRxv7HPPVeWDDhFrcijObog034tMA3RdihP3IlpfYudslqas0zILK
	 uC3y7CFRx5aR9YJ+yH9FaRongJuLhMA33O45A6YiYZEJ9U7jj97qRxOva6GuUu4vkE
	 K6Kiizumdt1J9040sUBF2fWdOKatU1e69yEH7Lw4=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTP id
	20240624195935eucas1p13699f0b4f31b9f036add1cba1387ad9b~cCRx0vrvo1835518355eucas1p1w
	for <keys@linux.kernel.org>; Mon, 24 Jun 2024 19:59:35 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
	eusmges3new.samsung.com (EUCPMTA) with SMTP id 61.70.09620.720D9766; Mon, 24
	Jun 2024 20:59:35 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20240624195935eucas1p2e50f4be03654cb8051b2dec45ce7a52c~cCRxS111a1913019130eucas1p2Z
	for <keys@linux.kernel.org>; Mon, 24 Jun 2024 19:59:35 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
	eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20240624195934eusmtrp291d91d10a5920a3beedd38f810152bce~cCRxSZ2Am1688316883eusmtrp2g
	for <keys@linux.kernel.org>; Mon, 24 Jun 2024 19:59:34 +0000 (GMT)
X-AuditID: cbfec7f5-d1bff70000002594-a7-6679d027abea
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
	eusmgms2.samsung.com (EUCPMTA) with SMTP id 29.30.09010.620D9766; Mon, 24
	Jun 2024 20:59:34 +0100 (BST)
Received: from CAMSVWEXC01.scsc.local (unknown [106.1.227.71]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20240624195934eusmtip2da1aca998263ec5fb04d72d9b9f15256~cCRxEjVVX2292222922eusmtip2r
	for <keys@linux.kernel.org>; Mon, 24 Jun 2024 19:59:34 +0000 (GMT)
Received: from localhost (106.210.248.242) by CAMSVWEXC01.scsc.local
	(2002:6a01:e347::6a01:e347) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
	Mon, 24 Jun 2024 20:59:32 +0100
Date: Mon, 24 Jun 2024 21:59:18 +0200
From: Joel Granados <j.granados@samsung.com>
To: Linux Kernel Keys <keys@linux.kernel.org>
Subject: Revoking a subkey
Message-ID: <20240624195918.dhbonudmhnayiggu@joelS2.panther.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: CAMSVWEXC01.scsc.local (2002:6a01:e347::6a01:e347) To
	CAMSVWEXC01.scsc.local (2002:6a01:e347::6a01:e347)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrPIsWRmVeSWpSXmKPExsWy7djP87rqFyrTDB6flrV4uquF3YHR49iV
	DrYAxigum5TUnMyy1CJ9uwSujNmb+tkLjrNULLzziK2BcQ9zFyMnh4SAicSbAysYuxi5OIQE
	VjBKnGs4wAiSEBKYwCRx8TovRKKfSaL50VFWmI6+JV0sEInljBL9m+awwVV9Pd3IDtG+lVGi
	70ociM0ioCqxftYesLFsAjoS59/cAdstIqArcbNtJwuILSwgJdF14zCYzSvgILHgwH1mCFtQ
	4uTMJ2BxZqDeBbs/AS3jALKlJZb/44A4SFniy6c3UO/USqw9doYd5B4JgY/sEmu2XWSHSLhI
	tN/ayQRhC0u8Or4FKi4j8X/nfCaIhsmMEvv/fYDqXs0osazxK1SHtUTLlSdQHY4SbQuvsoNc
	ISHAJ3HjrSDEcXwSk7ZNZ4YI80p0tAlBVKtJrL73hgUiLCNx7hMfhOkhcWeLwwRGxVlInpyF
	5MlZCE8uYGRexSieWlqcm55abJyXWq5XnJhbXJqXrpecn7uJEZgGTv87/nUH44pXH/UOMTJx
	MB5ilOBgVhLhnV5flibEm5JYWZValB9fVJqTWnyIUZqDRUmcVzVFPlVIID2xJDU7NbUgtQgm
	y8TBKdXAJBAdPa3xu4TBu+PFD9o+7c1v8GKROPlRvkn74TsL5adPmrs27/t2QaZG7K3dAl2B
	j/nFS6I9HJzOpy3Y9GGDwd66pZxvsyqbTs34fC1+WrjgVo8y5uV8ITuYBExtRa8u4z7x+VzH
	/WUdf5WLKna8Yk+y2+Rsvv/uxhqeJy97jsvWsU7NmnXB4oXRU+7HGZ+P1Nw6eMbcrWRy+rtY
	n78TmL6Wvi8/IXZW2KeE6drr7ldh7y9PaX4w43GcX6TnmuqvZfcX9k+yDbFjLbuiEjxPr+DH
	5qWef0sc8qxeS+44PvU7c1a83ae9h/tnWV7QWynyNW/b1ncMs5ccnPRiYfzVdva3mv2LCjhs
	Je4v6Ncq3KbEUpyRaKjFXFScCADRnJm8cgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrFLMWRmVeSWpSXmKPExsVy+t/xe7pqFyrTDBo7TS2e7mphd2D0OHal
	gy2AMUrPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/OJiU1J7MstUjfLkEv
	Y/amfvaC4ywVC+88Ymtg3MPcxcjJISFgItG3pIuli5GLQ0hgKaPE2QUX2SASMhIbv1xlhbCF
	Jf5c62KDKOplkli0djsThLOVUWL17+9gHSwCqhLrZ+1hBLHZBHQkzr+5A7ZCREBX4mbbThYQ
	W1hASqLrxmEwm1fAQWLBgfvMELagxMmZT8DizEC9C3Z/AprJAWRLSyz/xwFxhLLEl09voK6u
	lXh1fzfjBEaBWUi6ZyHpnoXQvYCReRWjSGppcW56brGRXnFibnFpXrpecn7uJkZgIG879nPL
	DsaVrz7qHWJk4mA8xCjBwawkwju9vixNiDclsbIqtSg/vqg0J7X4EKMp0JcTmaVEk/OBsZRX
	Em9oZmBqaGJmaWBqaWasJM7rWdCRKCSQnliSmp2aWpBaBNPHxMEp1cA0P1l34by6umUXjBwN
	Dey37/sU6c7i+b9+btIPjn1tf/zqUvJlDgm3sj/Q2Dh3oajIh9S2oOwO6avzFdI3dvQwqQnP
	edMze+e3RAb3HMfY02csb6U0eShISrlu3Z26I8NGbIm3qvKV1ujGBwIC/ecCwyKTfrx5eiT3
	AbdAdOrNeb8OOeXuzDxy+9hfQaewgrtXl/6qX3K3sXm+z9zJdxoazydsWhOQbKLCrh9nIHut
	x/Hr32mcLxce2LOdVVCo8dmfd2ueqJn3d2izqrlE3d7++y7fyl0Pxct9LTm2T4hjY2gtK2q5
	s7xgoc7up48qn5XKMYevUHKdMtViW/ocY4VXjRIv5SS6fPo3tWm9N1diKc5INNRiLipOBAAv
	smEY7QIAAA==
X-CMS-MailID: 20240624195935eucas1p2e50f4be03654cb8051b2dec45ce7a52c
X-Msg-Generator: CA
X-RootMTR: 20240624195935eucas1p2e50f4be03654cb8051b2dec45ce7a52c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20240624195935eucas1p2e50f4be03654cb8051b2dec45ce7a52c
References: <CGME20240624195935eucas1p2e50f4be03654cb8051b2dec45ce7a52c@eucas1p2.samsung.com>

Hello

I'm looking to replace one of my subkeys with a new one. I have one that
is E and another that is A. My third one is SEA and I want to just
have it as a signature key to avoid the annoying situation where there
is no consistency in the use of my encryption keys. Unfortunately I have
not found documentation or precedent on how to do this for the kernel

Does anyone see an issue with me just:
1. Revoking my SEA subkey
2. Creating a new S subkey
3. Updating my key through this list

If there is another way, please let me know.

Best

-- 

Joel Granados
