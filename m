Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=165.173.182.12
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793715913;
	b=1RHn4j1toZbS9SJJixbk0zr5zLFo3SZz/YxqcfrztubqROmCp+QeEdn65UXuKQBZpMhN
	 wzmLPb9n8UzXLq7G9lP5sYeRY75pSKZKM2d08/MdorEVBuX78Maf3G2+q6FoNiwmHyM+5
	 Y+yYoyU1O12tM/iM5EHFBqmWUxHR2FewtBeOpvYMnv8CieIKilMeMSGRYMj3+UYQFOD3i
	 BUid421UMQ8Sq1vZw5C0wvVigD9vWSJBYLfu+Sc1O4NfDVkPuaFKk4mXR7KNqgJ+VLzL3
	 3idGo+VzGEqnOXDm+YTnhIaG9sE9e4MSSb+6nWZ5ZXlCQz6pknScTs4jBfMEmLDBc0Q==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793715913;
	h=DMARC-Filter:DKIM-Signature:Received:From:Content-Type:
	 Content-Transfer-Encoding:Mime-Version:Subject:Date:References:To:
	 In-Reply-To:Message-Id:X-Mailer:X-ZohoMailClient;
	bh=1D3xy6jdqcBpZHnw98RV9OlpWa9wqdL7j9FdKwdKtBg=;
	b=wHVZkQj6DOnpjRhfAaeGnrvAd8Y4+He7yNS05HHDrKs/SvwR5CPhAs8jBhwzZQVv6Vux
	 2IARZSCB1/+Kdnj7OIyl/Lh+Z7pkkPjWbXaR/7GEPVm+qRxrBYUbMh4IlAD7GBzmKZnbO
	 uTwhtLz1zo3t2ZMBQ2mpqqsbk4ukkFcZkR8pp88L/2fw5XqDtF6f9bplRGJNilVMLtr/t
	 jrkd7CurSs6mwA1HFtRDjMSfX7AJuMwqyjsKOuHxdHWLRp9AeIceBCV/FhmBBcz7OXv89
	 hsFUtJK2UubH4YxPMho0BBfs/mEsojXHKNxAb6mOB7OtA8s/EOXYTE/o1OwFKpy5WnA==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=collabora.com;
	spf=pass smtp.mailfrom=collabora.com;
	dkim=pass header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=PJAmqKiS;
	arc=pass header.oldest-pass=0 smtp.remote-ip=165.173.182.12
Received: from sender5-op-o12.zoho.com (sender5-op-o12.zoho.com [165.173.182.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED0E606A32F
	for <keys@linux.kernel.org>; Tue,  3 Nov 2026 14:25:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 0ED0E606A32F
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=PJAmqKiS
ARC-Seal: i=1; a=rsa-sha256; t=1793715910; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UJPU20MLD4SHZ32Vxd9gzp5cgd45wVR4H+AkhrDMkp21DCUm/1uiwjos5GieoD2yaboOQ2bQo0iOuXf24eVE0klKteG+TfMyshYIhQoANPA6xW2/LUMLeLgPZ+EoSt16hndvISQvUgzGQOfkBjKUr3gbcZ3WbumrSwrTI0HY79U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1793715910; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=1D3xy6jdqcBpZHnw98RV9OlpWa9wqdL7j9FdKwdKtBg=; 
	b=m3OU38Q51dHMIPI0fnygwCPFMBA1GMGGgkMw7fXrEPbs/xDuXOHcWamFPPQpx6ovrDRCU3X1daNH9V19/AaHM1AX5ol4R8aIMA/lQu0HXZsIIrcGA/AlKOvNQiWmQaotRi7Y71BkzQP5njGTPHkBTNnqJvPOVmjxDW6ZcVIT82Y=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=daniel.almeida@collabora.com;
	dmarc=pass header.from=<daniel.almeida@collabora.com>
DKIM-Signature: a=rsa-sha256; b=PJAmqKiSNokzsvuk7IQxxqSFW+z09pvIQplZATfSNgDS6naDYJLD7hcW3y5wVPQAVk1HLYOkdM+v1MPydQBkXgr3t1Zf/QjxWZNaTWAObLVhcanVY8jetRcNCotPlAVtJyAoGL1878vlfbX0tWn6TH6QZR2QK/rc3efw9iTE8pA=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=1D3xy6jdqcBpZHnw98RV9OlpWa9wqdL7j9FdKwdKtBg=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 179371590695493.66979811509532;
	Tue, 3 Nov 2026 06:25:06 -0800 (PST)
From: Daniel Almeida <daniel.almeida@collabora.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3901.200.71.1.16\))
Subject: Re: Key submission: Daniel Almeida
Date: Tue, 3 Nov 2026 11:24:52 -0300
References: <5B1595C3-5536-443E-B903-0EB7A5425711@collabora.com>
To: keys@linux.kernel.org
In-Reply-To: <5B1595C3-5536-443E-B903-0EB7A5425711@collabora.com>
Message-Id: <5198D2DE-784B-49C2-B74A-B1A88F33C05C@collabora.com>
X-Mailer: Apple Mail (2.3901.200.71.1.16)
X-ZohoMailClient: External



> On 27 Oct 2026, at 18:17, Daniel Almeida =
<daniel.almeida@collabora.com> wrote:
>=20
> Hi,
>=20
> Please add my key to the kernel.org keyring. It is signed by
> Miguel Ojeda and Kent Overstreet.
>=20
> Fingerprint: 3B0B 1B8D 7ED4 6BF1 8A6E  4D88 B158 3DCA 8A90 EEA7
>=20
> Thanks,
> Daniel
>=20
> <daniel-almeida-pubkey.asc>


Hi there,

Gentle ping here, please.

=E2=80=94 Daniel=
