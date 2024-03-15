Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3539118035
	for <keys@linux.kernel.org>; Fri, 15 Mar 2024 21:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710537928; cv=none; b=HzxF6AYmvTZ6B0W8rdRknBR77DU/xqdjo4XE01wXValqHkSF3PZ+/Z5J9BmoCDYeMrxDyudHjToN5mm6LF95kO14DjVWIn/pksq9mBgRWydtehE301PImGX89J/yeNAwASXQ5V7apWxdqeU7MoVw6yoJB2BLSdmAneU8UcF/MmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710537928; c=relaxed/simple;
	bh=gOShq94VSu/exHA7n+vOe4V/zj38MGNyT/7nKDnJpfA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WX91sDzArYi2hFf8R6J0k06bmYnvdbFBFUSHs1Fms1xhWC03kYGVKOJuFR9O+eu0jqjQAJM6W343ckz8tTVuoqFf72yJ2g26I7e0vWop7Tya1BIug1OqXV0VyLVChyCNn9ubkfBN0Mis2cWXdrQ0WShwooXOs8N+uwGSUujlsDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=pg/YW5j4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="pg/YW5j4"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 804C3C433C7;
	Fri, 15 Mar 2024 21:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1710537927;
	bh=gOShq94VSu/exHA7n+vOe4V/zj38MGNyT/7nKDnJpfA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pg/YW5j4z8Vh43MmV1smVLWaDcZAoYmw3LD+IQB6NQash9tcwCbeyDHg8KK/eGbm1
	 hfhBKNZxpoIIH5b24HQqOMdf9viYhr/ATJ2gTzLZaD0IVFlRae7ce215Sej6duivno
	 fmwlwqxGc3PvIUzJZ7C2rIYh5nafxZtcz5bTkfSs=
Date: Fri, 15 Mar 2024 17:25:25 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Joel Granados <j.granados@samsung.com>
Cc: keys@linux.kernel.org
Subject: Re: Please add j.granados@samsung.com to the kernel key ring
Message-ID: <20240315-amazing-refreshing-coucal-6f2d09@meerkat>
References: <CGME20240315140642eucas1p12f225782d66bac33753ea3e4b79e9ae3@eucas1p1.samsung.com>
 <20240315140640.3pzvokxh7wnie5sf@joelS2.panther.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240315140640.3pzvokxh7wnie5sf@joelS2.panther.com>

On Fri, Mar 15, 2024 at 03:06:40PM +0100, Joel Granados wrote:
> Please add me to the key ring.

Your key is already in the keyring.
https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/tree/keys/5895FAAC338C6E77.asc

-K
