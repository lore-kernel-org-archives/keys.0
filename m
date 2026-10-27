Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=165.173.182.11
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793135883;
	b=z95zDgYGBsHoLh6jDt3j+HOY4sLXIR6DxnZwSdQIdxmPOhkLM8kP5HJ8uiDgmggcMnlA
	 KnnjPJTVjYT+1vr/aUi4IN9ITlFmUBOKcVIhdwNNL08VABEMxkWBRs6rCrAUiAF2zRhLx
	 3hxsg76+mf8ygRXPnskqjRaEjrRygOkAgDpxKyeYGVnN4cpX39q+s2bdwuoe1wgdwLL6Q
	 bXuD2FzwTVYYLOfMXRRrYMrPVBYEAGJaxiZcgpp6pipNJfw2RLuMpzr9cfVmLxnD8E6kj
	 HgRLvGPCGgr6/yi5rBlrgI5vcXsQHBN5L5wY7xDJvevMAIO3vtkVw8/Wt89bLJksonw==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793135883;
	h=DMARC-Filter:DKIM-Signature:Received:From:Content-Type:Mime-Version:
	 Subject:Message-Id:Date:To:X-Mailer:X-Zoho-Virus-Status:
	 X-Zoho-AV-Stamp:X-ZohoMailClient;
	bh=Eo45k2kPLm5tpJtzGtf6ASjkZlV8v49H/ayVH7bC7es=;
	b=F3FfO/og8YTfvqv4cNxZBzsT+jnN1LP7KkGdVw/LJGEPyGgyfgsvNZDbxQUVexddurO5
	 YS6u2rcSNUWlUYNybsE04OzT5XksCghm+vpobFolC8VDyKaXlygds/M4vctlovS9UikQ2
	 SVq0o7ll/7AEhDwSX/L64CioEITtJcd7uhU5q1S2rDRlD3meiHdoTNBrHoYUIob1nufaW
	 1YlGGGyyd6MLfifoD3kgA32jAECqFqewl/obdh6b0tERY0K+B50HikuRmEb8MVdyHiK/S
	 Ep+E9wC+y092bMmFrJXDWeHEjxHTPUn4Mxr9zB1zPt0HpxCMRaxAA7f1g4VS+KKG4wQ==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=collabora.com;
	spf=pass smtp.mailfrom=collabora.com;
	dkim=pass header.d=collabora.com header.i=daniel.almeida@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=TuOMXB1r;
	arc=pass header.oldest-pass=0 smtp.remote-ip=165.173.182.11
Received: from sender5-op-o11.zoho.com (sender5-op-o11.zoho.com [165.173.182.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEB4606A31A
	for <keys@linux.kernel.org>; Tue, 27 Oct 2026 21:18:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org CBEB4606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=collabora.com header.i=daniel.almeida@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=TuOMXB1r
ARC-Seal: i=1; a=rsa-sha256; t=1793135881; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=BpIndJOQ8K1oHv5sal9AYBn7/IwHIakp5FJXgsasjOARwOMAPZZVv6QntRMuqbIOKEbyT/BZjteTMZfxq4mwipAUEX6jsoSvHKCefZyrcoYdXGEsyvogM8Kl1xYlPD8fMW8QxhystXA7wl1K2LazMadWJxHpmPGZDbkiot73FJ0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1793135881; h=Content-Type:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=Eo45k2kPLm5tpJtzGtf6ASjkZlV8v49H/ayVH7bC7es=; 
	b=nmb5b7o0Od4NZWBOij0z8HXM7YnpeTaOmOydIFcXto4RLdflCg6jkzlZG979NSbgGCL5mHOJWvFXTUmifiNb0uWpbougSinsJaDEZTf0BAF2xpzuuzGoyHRl1WQvzHUtqWB/i1yL7MWk7FPi5MvxgX3/cuEZuAkeepJn5gxJRJs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=daniel.almeida@collabora.com;
	dmarc=pass header.from=<daniel.almeida@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1793135881;
	s=zohomail; d=collabora.com; i=daniel.almeida@collabora.com;
	h=From:From:Content-Type:Mime-Version:Subject:Subject:Message-Id:Message-Id:Date:Date:To:To:Reply-To:Cc;
	bh=Eo45k2kPLm5tpJtzGtf6ASjkZlV8v49H/ayVH7bC7es=;
	b=TuOMXB1r4Nd2OvY2DQuSsjiv2/NvjYuVymX0ycwDXos78EhqSakygUKJMU7I0ed0
	sgME6RHRF+6H7l4lKmabA45fQwCl7mrfNHLjD5MujbZl9b2TPjTme4qrS0tqu3enWz4
	r1PXBsoT5MoMUWxXgEhviyf2a6SWVYJN5QB8DqhM=
Received: by smtp.zohomail.com with SMTPS id 1793135879736386.24874074237357;
	Tue, 27 Oct 2026 14:17:59 -0700 (PDT)
From: Daniel Almeida <daniel.almeida@collabora.com>
Content-Type: multipart/mixed;
	boundary="Apple-Mail=_48FCA96B-70D7-4ECA-B4F4-2C9B8271C979"
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3901.100.1.1.11\))
Subject: Key submission: Daniel Almeida
Message-Id: <5B1595C3-5536-443E-B903-0EB7A5425711@collabora.com>
Date: Tue, 27 Oct 2026 18:17:45 -0300
To: keys@linux.kernel.org
X-Mailer: Apple Mail (2.3901.100.1.1.11)
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.13.1.5.4/293.134.36
X-ZohoMailClient: External


--Apple-Mail=_48FCA96B-70D7-4ECA-B4F4-2C9B8271C979
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii

Hi,

Please add my key to the kernel.org keyring. It is signed by
Miguel Ojeda and Kent Overstreet.

Fingerprint: 3B0B 1B8D 7ED4 6BF1 8A6E  4D88 B158 3DCA 8A90 EEA7

Thanks,
Daniel


--Apple-Mail=_48FCA96B-70D7-4ECA-B4F4-2C9B8271C979
Content-Disposition: attachment;
	filename=daniel-almeida-pubkey.asc
Content-Type: application/octet-stream;
	x-unix-mode=0644;
	name="daniel-almeida-pubkey.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
CA==
=dp1i
-----END PGP PUBLIC KEY BLOCK-----

--Apple-Mail=_48FCA96B-70D7-4ECA-B4F4-2C9B8271C979--
