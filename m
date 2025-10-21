Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB9625BEF2
	for <keys@linux.kernel.org>; Tue, 21 Oct 2025 19:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761076059; cv=none; b=iUUHOOibfP+ZS6rGW7e9e+z5t7dq1xvlPyCin63NTcfO7NOGVv68T3JN2hWcByu6EvBo73KpXGDTG3Z+2XINv6vYObP/NkrDhrjkdWYE+KI5gxJUfrIuorunIGdBPgn3nnBAQ2QSzANzv0EJiTbZ2rA0KX+mP5jWf2xmpMm7F4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761076059; c=relaxed/simple;
	bh=56/YSuhNeRhRYHeKBEOQTbm8f0MFlnG4iy+hZEtnWwU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZEI+jwKdN8glPveMj/PQf7dgWaIoXCIn/owcD6A4NJlVt3JDcFPfcxbiSX9Cuqplb87OZXFRENNaJdf3ibswqYiIBUraqC/k59bpaT3iecfCwkyfvPyJDPX6Er1AB82oU3ih9VUGnSNTaB5UsIa1RrdGVdN3wsLazzlgP6zjBes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=K3VCPEYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="K3VCPEYG"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0A59C4CEF1;
	Tue, 21 Oct 2025 19:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1761076058;
	bh=56/YSuhNeRhRYHeKBEOQTbm8f0MFlnG4iy+hZEtnWwU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K3VCPEYGcyybzBPkdEsW9/xXmfi84kLMNwitrZwlJGamGO9bn2rc6lxXceS7abNLo
	 ZUC+bH9Yjj/MIUhZuTpm2kUMiqSZRC2L+WoX1D5RO6mvOVS1wH1cta+9kmuK2tuoK3
	 6MMfXXjfxL+4Go1kxEjy2bkZV5wrPQWTZeZC1w68=
Date: Tue, 21 Oct 2025 15:47:36 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: keys@linux.kernel.org
Subject: Re: Submitting my key to the keyring
Message-ID: <20251021-exotic-wonderful-oryx-9f3616@lemur>
References: <b2de2044-5e32-431e-8dc3-2b401b38cfc0@csgroup.eu>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <b2de2044-5e32-431e-8dc3-2b401b38cfc0@csgroup.eu>

On Fri, Oct 17, 2025 at 08:27:07AM +0200, Christophe Leroy wrote:
> Hi,
> 
> Find attached my key for submission to linux kernel key ring

Added, thanks.

-K
