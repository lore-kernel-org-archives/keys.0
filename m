Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18F434C148
	for <keys@linux.kernel.org>; Tue, 21 Oct 2025 17:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761068442; cv=none; b=oNRFsZbm+bytXMU97IllslEbcKeuFzWv9g04yviiQUBYRAsUM03ZVzrsHtxKXThE0OoSYO1qgCQ+Z2q9Oe0LzIzD4ilyDGa4yMUWjsbqKTzPXcYHEuBi646PlUQaKURptF5rizZXIbVoACqyanBJaS3DqTCrYdEgrEGtSF6vyAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761068442; c=relaxed/simple;
	bh=/3F1nypZEhQV8oT6k+I/LMk/C1SjpuF0Y8Y5qWCUJOA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i1xtAVBy8vdyHRVx/QkrND/i26d1c9C6QbrZu5X0PbsOwEuAjALWkDrcLiSL6SDOC/nL6f51boEPTCz+cmwlNuQVlCovKkLdG4olkmljt2m4KHNSeeUZZDrYPvm+vlNIuqNzJHzWxGiotxs6NmFHLIQNWvgdNOBjlqB5RB4pDkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=l3S9xtmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="l3S9xtmx"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F0C3C4CEF1;
	Tue, 21 Oct 2025 17:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1761068441;
	bh=/3F1nypZEhQV8oT6k+I/LMk/C1SjpuF0Y8Y5qWCUJOA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l3S9xtmxdN2E2KGr2FnGhnp58OeGovDqazfLNHlxtlVkmMPlx6SUKYz4FS6CE0FDH
	 spPUlqGiuYHNx2d5of9yvI8NXdTI8zR5tZNgZdT8C7LhIXSj2xtnU9YDJQ2JQkOzgh
	 SiX6rUnLDYvfcSBEyMYXo0i+8VC2KZks3m3vuAfc=
Date: Tue, 21 Oct 2025 13:40:37 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Drew Fustini <fustini@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Update for Drew Fustini key
Message-ID: <20251021-airborne-literate-swan-b34606@lemur>
References: <aPUeI8iowKxYu51Y@x1>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aPUeI8iowKxYu51Y@x1>

On Sun, Oct 19, 2025 at 10:21:39AM -0700, Drew Fustini wrote:
> Please update the key for Drew Fustini. This now has Arnd's sig.

Updated, thanks.

-K
