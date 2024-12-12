Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE242EAE5
	for <keys@linux.kernel.org>; Thu, 12 Dec 2024 15:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734015759; cv=none; b=e/q7GaedKdyaDv3RTw9LCu+zLttQKWsTePly+rgS+3AyQbEl7lV38aotPdxvQzHlH0CvNUYuQeTp8WF6TZASyr98F873lqCkXN1Tunzt62Yohb60nx02PdHgVLaSgBR6lr85VQtCptTGTKzvsMEbG+kGg5S90ejpgaEghW7wQew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734015759; c=relaxed/simple;
	bh=U0H6LMVgQDvtzNDOTxfSmAsWqG3e09krreuEHnBKM1k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lazQMxY8D86agp881c4BjtwmLtB6TC5sKcO9n3qBAIhXPl/5i1fDbA4TpitTovWgKU10/wj/Ci92OALZrSz6QIDs0FG/ygcHaFf3xQnRbDMXTMfOIxM5Q75ewmWc/dwWcPB7hpVFkvcI9MsDFLfp8krd70sPJT/BKp9V/jubPOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=p2m6b6s4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="p2m6b6s4"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C844EC4CECE;
	Thu, 12 Dec 2024 15:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1734015759;
	bh=U0H6LMVgQDvtzNDOTxfSmAsWqG3e09krreuEHnBKM1k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p2m6b6s4S2PD/5KVPi27QxtxL+Np/tKP+gHxsGoJBzGTsancg/cREnh3JWUrdGwHt
	 Mw8hmZeEX8AAZss47KCobG5DZqwuBr+54Qq7uUHHUqhzH5SQcOHGvpzngwzw9UVOVk
	 Yxc6a3k6pp1eaZduEMl9L83Y8/yoTNo4MCrdh3cQ=
Date: Thu, 12 Dec 2024 10:02:37 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: nerdopolis <bluescreen_avenger@verizon.net>
Cc: keys@linux.kernel.org
Subject: Re: Submitting a key
Message-ID: <h6774iiiea2fpejxfhfhrdd7gz4uzzr7cpzwqdvi3a7w7iryia@xqqhraoatf52>
References: <5341712.6fTUFtlzNn.ref@nerdopolis2>
 <5341712.6fTUFtlzNn@nerdopolis2>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <5341712.6fTUFtlzNn@nerdopolis2>

On Wed, Dec 11, 2024 at 07:29:46PM -0500, nerdopolis wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

There are no signatures on your key, so at this time we cannot accept it into
the keyring. Please get a signature from at least one other person already in
the keyring and resubmit.

-K
